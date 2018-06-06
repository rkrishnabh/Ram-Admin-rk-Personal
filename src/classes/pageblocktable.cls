public with sharing class pageblocktable {

    

private integer totalRecs = 0;
public integer OffsetSize = 0;
private integer LimitSize=5;
        public pageblocktable()
            {
                totalRecs = [select count() from account];
            }
            
            public List<account> getacclist()
        {
        List<account> acc = Database.Query('SELECT id,Name FROM account order by name asc LIMIT :LimitSize OFFSET :OffsetSize');
         System.debug('Values are '+ acc);
         return acc;
        }
            public void FirstPage()
            {
            OffsetSize = 0;
            }
            public void previous()
            {
            OffsetSize = OffsetSize-LimitSize;
            }public void next()
            {
            OffsetSize = OffsetSize + LimitSize;
            }public void LastPage()
            {
            OffsetSize = totalrecs-math.mod(totalRecs,LimitSize);
            }
            
            public boolean getprev()
                {
                if(OffsetSize == 0)
                return true;
                else
                return false;
                }
                public boolean getnxt()
                {
                if((OffsetSize + LimitSize) > totalRecs)
                return true;
                else
                return false;
                }
                
      

}