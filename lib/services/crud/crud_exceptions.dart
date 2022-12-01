class CrudException implements Exception {}

class DatabaseAlreadyOpenException extends CrudException {}

class UnableToGetDocumentsDirectoryException extends CrudException {}

class DatabaseIsNotOpenException extends CrudException {}

class CouldNotDeleteUserException extends CrudException {}

class UserAlreadyExistsException extends CrudException {}

class CouldNotFindUserException extends CrudException {}

class CouldNotDeleteNoteException extends CrudException {}

class CouldNotFindNoteException extends CrudException {}

class CouldNotUpdateNoteException extends CrudException {}

class ShouldHaveUserBeforeReadingAllNotesException extends CrudException {}
