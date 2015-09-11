<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:9fcf4f6d-556d-4a58-8a23-ef62c198171f(metabnf.refactorings)">
  <persistence version="8" />
  <language namespace="3ecd7c84-cde3-45de-886c-135ecc69b742(jetbrains.mps.lang.refactoring)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="ec5l" modelUID="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" version="-1" />
  <import index="cu2c" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="tpib" modelUID="r:00000000-0000-4000-0000-011c8959057f(jetbrains.mps.baseLanguage.logging.structure)" version="0" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tp1h" modelUID="r:00000000-0000-4000-0000-011c89590319(jetbrains.mps.lang.refactoring.structure)" version="1" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" implicit="yes" />
  <root type="tp1h.Refactoring" typeId="tp1h.6895093993902236229" id="3629575294817150051" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="ImportNodes" />
    <property name="userFriendlyName" nameId="tp1h.6895093993902236371" value="Import nodes from Transient Model" />
    <node role="parameter" roleId="tp1h.6895093993902236376" type="tp1h.RefactoringParameter" typeId="tp1h.6895093993902311012" id="3629575294821109476" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="prefix" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="3629575294821110406" nodeInfo="in" />
    </node>
    <node role="parameter" roleId="tp1h.6895093993902236376" type="tp1h.RefactoringParameter" typeId="tp1h.6895093993902311012" id="3629575294821110409" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="nodes" />
      <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeListType" typeId="tp25.1145383075378" id="5234480379109512128" nodeInfo="in" />
    </node>
    <node role="target" roleId="tp1h.6895093993902310998" type="tp1h.ModelTarget" typeId="tp1h.6895093993902310762" id="3629575294817211861" nodeInfo="ng" />
    <node role="doRefactorBlock" roleId="tp1h.6895093993902236381" type="tp1h.DoRefactorClause" typeId="tp1h.1189694053795" id="3629575294817150053" nodeInfo="nn">
      <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="3629575294817174748" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpib.LogStatement" typeId="tpib.1167227138527" id="3629575294817619570" nodeInfo="nn">
          <property name="severity" nameId="tpib.1167245565795" value="warn" />
          <node role="logExpression" roleId="tpib.1167227463056" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3629575294817620664" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3629575294817619704" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tp1h.RefactoringContext_ConceptFunctionParameter" typeId="tp1h.7953996722066256458" id="3629575294817619658" nodeInfo="nn" />
              <node role="operation" roleId="tpee.1197027833540" type="tp1h.ModelDescriptorOperation" typeId="tp1h.7953996722066252911" id="3629575294817620314" nodeInfo="nn" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3629575294817621515" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ec5l.~SModel%dgetModelName()%cjava%dlang%dString" resolveInfo="getModelName" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpib.LogStatement" typeId="tpib.1167227138527" id="5234480379109464106" nodeInfo="nn">
          <property name="severity" nameId="tpib.1167245565795" value="warn" />
          <node role="logExpression" roleId="tpib.1167227463056" type="tp1h.RefactoringParameterReference" typeId="tp1h.6895093993902496262" id="5234480379109469130" nodeInfo="nn">
            <link role="refactoringParameter" roleId="tp1h.6895093993902496263" targetNodeId="3629575294821109476" resolveInfo="prefix" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpib.LogStatement" typeId="tpib.1167227138527" id="5234480379109824105" nodeInfo="nn">
          <property name="severity" nameId="tpib.1167245565795" value="warn" />
          <node role="logExpression" roleId="tpib.1167227463056" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="5234480379109848502" nodeInfo="nn">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Integer%dtoString(int)%cjava%dlang%dString" resolveInfo="toString" />
            <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="e2lb.~Integer" resolveInfo="Integer" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5234480379109825641" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tp1h.RefactoringParameterReference" typeId="tp1h.6895093993902496262" id="5234480379109824269" nodeInfo="nn">
                <link role="refactoringParameter" roleId="tp1h.6895093993902496263" targetNodeId="3629575294821110409" resolveInfo="nodes" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetSizeOperation" typeId="tp2q.1162935959151" id="5234480379109835195" nodeInfo="nn" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3629575294820402782" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tp1h.MoveNodesToModelExpression" typeId="tp1h.1199620728600" id="3629575294820402776" nodeInfo="nn">
            <node role="destination" roleId="tp1h.1199619459779" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3629575294820426884" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tp1h.RefactoringContext_ConceptFunctionParameter" typeId="tp1h.7953996722066256458" id="3629575294820421281" nodeInfo="nn" />
              <node role="operation" roleId="tpee.1197027833540" type="tp1h.ModelDescriptorOperation" typeId="tp1h.7953996722066252911" id="3629575294820434592" nodeInfo="nn" />
            </node>
            <node role="whatToMove" roleId="tp1h.1199619459778" type="tp1h.RefactoringParameterReference" typeId="tp1h.6895093993902496262" id="5234480379109823900" nodeInfo="nn">
              <link role="refactoringParameter" roleId="tp1h.6895093993902496263" targetNodeId="3629575294821110409" resolveInfo="nodes" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="5234480379110645603" nodeInfo="nn">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.StatementCommentPart" typeId="tpee.6329021646629175143" id="5234480379110645604" nodeInfo="nn">
            <node role="commentedStatement" roleId="tpee.6329021646629175144" type="tp1h.UpdateModelProcedure" typeId="tp1h.1198577376375" id="3629575294817608571" nodeInfo="nn">
              <node role="argument" roleId="tp1h.1198577431631" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3629575294817608746" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tp1h.RefactoringContext_ConceptFunctionParameter" typeId="tp1h.7953996722066256458" id="3629575294817608597" nodeInfo="nn" />
                <node role="operation" roleId="tpee.1197027833540" type="tp1h.ModelDescriptorOperation" typeId="tp1h.7953996722066252911" id="3629575294817618294" nodeInfo="nn" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
</model>

