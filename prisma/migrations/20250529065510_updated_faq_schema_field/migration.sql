BEGIN TRY

BEGIN TRAN;

-- AlterTable
ALTER TABLE [dbo].[FAQ] ADD [isHomeFaq] BIT CONSTRAINT [FAQ_isHomeFaq_df] DEFAULT 0;

COMMIT TRAN;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN;
END;
THROW

END CATCH
