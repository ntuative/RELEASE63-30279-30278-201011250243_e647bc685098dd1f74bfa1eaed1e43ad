package com.sulake.habbo.moderation
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemListWindow;
   
   public class PickedIssuesView implements IIssueBrowserView
   {
       
      
      private var _issueManager:IssueManager;
      
      private var var_565:IssueBrowser;
      
      private var _window:IWindowContainer;
      
      private var var_1936:IssueListView;
      
      public function PickedIssuesView(param1:IssueManager, param2:IssueBrowser, param3:IWindowContainer)
      {
         super();
         this._issueManager = param1;
         this.var_565 = param2;
         this._window = this.var_565.createWindow("picked_issues_xml") as IWindowContainer;
         param3.addChild(this._window);
         var _loc4_:IItemListWindow = this._window.findChildByName("issue_list") as IItemListWindow;
         this.var_1936 = new IssueListView(param1,param2,_loc4_,"picked_issues_list_item_xml");
      }
      
      public function get view() : IWindowContainer
      {
         return this._window;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._window.visible = param1;
      }
      
      public function update() : void
      {
         var _loc1_:Array = this._issueManager.getBundles(IssueManager.const_1044);
         this.var_1936.update(_loc1_);
      }
   }
}
