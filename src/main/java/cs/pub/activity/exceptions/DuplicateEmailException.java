package cs.pub.activity.exceptions;

public class DuplicateEmailException extends Exception {

	private static final long serialVersionUID = -7117475236306443638L;

	public DuplicateEmailException(String message) {
		super(message);
	}

}
