<!-- <snippet1> -->
<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

  Sub OnActiveStepChanged(ByVal sender As Object, ByVal e As EventArgs)
    ' If the ActiveStep is changing to Step2 check to see if the 
    ' CheckBox1 CheckBox is checked.  If it is then skip 
    ' to the Step3 step.
    If Wizard1.ActiveStep.Equals(Me.WizardStep2) Then
      If (Me.CheckBox1.Checked) Then
        Wizard1.ActiveStepIndex = Wizard1.WizardSteps.IndexOf(Me.WizardStep3)
      End If
    End If
  End Sub
  
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
  <head runat="server">
    <title>ASP.NET Example</title>
</head>
<body>
      <form id="form1" runat="server">
        <asp:Wizard ID="Wizard1" 
          Runat="server"
          OnActiveStepChanged="OnActiveStepChanged">
          <WizardSteps>
            <asp:WizardStep ID="WizardStep1" 
              Title="Step 1" 
              Runat="server">
              <asp:CheckBox ID="CheckBox1" 
                Runat="Server" 
                Text="Check this checkbox to skip Step 2." />
                You are currently on Step 1.
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" 
              Title="Step 2" 
              Runat="server">
              You are currently on Step 2.
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep3" 
              Runat="server" 
              Title="Step 3">
              You are currently on Step 3.
            </asp:WizardStep>
          </WizardSteps>
          <HeaderTemplate>
            <b>ActiveStepIndex Example</b>
          </HeaderTemplate>
        </asp:Wizard>
      </form>
  </body>
</html>
<!-- </snippet1> -->