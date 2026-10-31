from __future__ import annotations

import hashlib
from pathlib import Path
from urllib.request import Request, urlopen

ROOT = Path(__file__).resolve().parents[1]
CACHE = ROOT / "build" / "corpus-validation" / "upstream"


def fetch_upstream_file(repo: str, revision: str, path: str, sha256: str) -> Path:
    """Fetch one immutable upstream file, checking its pinned content digest."""
    target = CACHE / repo.replace("/", "__") / revision / Path(path)
    if target.is_file() and hashlib.sha256(target.read_bytes()).hexdigest() == sha256:
        return target

    url = f"https://raw.githubusercontent.com/{repo}/{revision}/{path}"
    request = Request(url, headers={"User-Agent": "MetaBNF corpus regression test"})
    with urlopen(request, timeout=30) as response:
        content = response.read()
    actual = hashlib.sha256(content).hexdigest()
    if actual != sha256:
        raise AssertionError(f"Pinned corpus file checksum mismatch for {url}: {actual}")

    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_bytes(content)
    return target
