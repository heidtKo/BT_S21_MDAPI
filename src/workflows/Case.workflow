<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>this_is_to_test_email_action_for_WF</fullName>
        <description>this is to test email action for WF</description>
        <protected>false</protected>
        <recipients>
            <recipient>{!Environment.VAR_NAME_USER}</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportCaseResponse</template>
    </alerts>
    <fieldUpdates>
        <fullName>ChangePriorityToHigh</fullName>
        <field>Priority INT should appear</field>
        <literalValue>High</literalValue>
        <name>Changes the case priority to high.</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>testFieldUpdate</fullName>
        <field>Description FB should not appear</field>
        <name>testFieldUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <outboundMessages>
        <fullName>testOutboundAction</fullName>
        <apiVersion>51.0</apiVersion>
        <endpointUrl>http://test.com</endpointUrl>
        <fields>BusinessHoursId</fields>
        <fields>CaseNumber</fields>
        <fields>Id</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>{!Environment.VAR_NAME_USER}</integrationUser>
        <name>testOutboundAction</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>testWFRule</fullName>
        <actions>
            <name>this_is_to_test_email_action_for_WF FB must appear</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>testFieldUpdate</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>testOutboundAction</name>
            <type>OutboundMessage</type>
        </actions>
        <actions>
            <name>this_is_to_test_wf_task_action</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Reason</field>
            <operation>equals</operation>
            <value>Installation</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>this_is_to_test_wf_task_action</fullName>
        <assignedTo>{!Environment.VAR_NAME_USER}</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>10</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>this is to test wf task action</subject>
    </tasks>
</Workflow>