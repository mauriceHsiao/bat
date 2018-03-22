sqlcmd -Q "update [BOStore].[dbo].[UserProfiles] set UserName=CAST(serverproperty('servername') AS varchar)+'\as' where USERID= (select [UserId] FROM [BOStore].[dbo].[UserProfiles])"
