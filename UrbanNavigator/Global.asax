<%@ Application Codebehind="Global.asax.cs" Inherits="UrbanNavigator.Global" Language="C#" %>

<script Language="C#" RunAt="server">
    private static Int32 globalCounter = 0;
    public void increment(Int32 newValue){
        lock(this){
            globalCounter = globalCounter + newValue;
        }
    }
</script>