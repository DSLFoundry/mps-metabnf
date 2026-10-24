package metabnf.usability;

import java.util.Map;

public final class UsabilityException extends IllegalArgumentException {
    private final Map<String, String> diagnostic;

    public UsabilityException(String code, String target, String message, String remedy) {
        super(code + ": " + message);
        diagnostic = Map.of("code", code, "severity", "error", "target", target, "message", message, "remedy", remedy);
    }

    public Map<String, String> getDiagnostic() { return diagnostic; }
}
