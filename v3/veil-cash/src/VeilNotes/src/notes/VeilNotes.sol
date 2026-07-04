// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

struct Note {
    uint256 timestamp;
    bytes encryptedData;
}

contract VeilNotes is Ownable {
    // Errors
    error OnlyValidator();
    error EmptyNote();
    error IndexOutOfBounds();
    error InvalidIndexRange();
    error NoteAddingDisabled();
    // Event emitted when a new note is added

    event NoteAdded(address indexed user, uint256 timestamp, bytes encryptedData);
    event NoteDeleted(address indexed user, uint256 index);
    event UserNotesDeleted(address indexed user);
    event NoteAddingToggled(bool enabled);

    /// The validator contract address
    address public validatorContract;
    bool public noteAddingEnabled;

    // Mapping from user address to an array of their notes
    mapping(address => Note[]) private userNotes;

    /// @notice Modifier to ensure only the validator contract can call the function
    modifier onlyValidator() {
        if (msg.sender != validatorContract) {
            revert OnlyValidator();
        }
        _;
    }

    constructor() Ownable(msg.sender) {}

    /**
     * @dev Add a new note for a specific user.
     * @param _depositor The address of the user to add a note for.
     * @param _encryptedData The encrypted note data.
     */
    function addNote(address _depositor, bytes calldata _encryptedData) external onlyValidator {
        if (!noteAddingEnabled) {
            return;
        }
        if (_encryptedData.length == 0) {
            return;
        }

        // Create a new note
        Note memory newNote = Note({timestamp: block.timestamp, encryptedData: _encryptedData});

        // Add the note to the user's array of notes
        userNotes[_depositor].push(newNote);

        // Emit an event for the new note
        emit NoteAdded(_depositor, block.timestamp, _encryptedData);
    }

    /**
     * @dev Store a new encrypted note after a deposit is made.
     * @param _encryptedData The encrypted note data.
     */
    function addNoteBackup(bytes calldata _encryptedData) external {
        if (_encryptedData.length == 0) {
            revert EmptyNote();
        }

        // Create a new note
        Note memory newNote = Note({timestamp: block.timestamp, encryptedData: _encryptedData});

        // Add the note to the user's array of notes
        userNotes[msg.sender].push(newNote);

        // Emit an event for the new note
        emit NoteAdded(msg.sender, block.timestamp, _encryptedData);
    }

    /**
     * @dev Delete 1 note for a specific user.
     * @param _index The index of the note to delete.
     */
    function deleteNote(uint256 _index) external {
        if (_index >= userNotes[msg.sender].length) {
            revert IndexOutOfBounds();
        }

        // Swap with the last element (if not already the last)
        uint256 lastIndex = userNotes[msg.sender].length - 1;
        if (_index != lastIndex) {
            userNotes[msg.sender][_index] = userNotes[msg.sender][lastIndex];
        }

        // Remove the last element
        userNotes[msg.sender].pop();

        // Optionally emit an event
        emit NoteDeleted(msg.sender, _index);
    }

    /**
     * @dev Delete all notes for a specific user.
     */
    function deleteUserNotes() external {
        delete userNotes[msg.sender];
        emit UserNotesDeleted(msg.sender);
    }

    /**
     * @dev Retrieve all notes for a specific user.
     * @param _user The address of the user.
     * @return An array of the user's notes.
     */
    function getUserNotes(address _user) external view returns (Note[] memory) {
        return userNotes[_user];
    }

    /**
     * @dev Get the number of notes for a specific user.
     * @param _user The address of the user.
     * @return The number of notes for the user.
     */
    function getNumberOfNotes(address _user) external view returns (uint256) {
        return userNotes[_user].length;
    }

    /**
     * @dev Returns all notes between the specified index range.
     * @param _user The address of the user.
     * @param startIndex The starting index of the range.
     * @param endIndex The ending index of the range.
     * @return An array of notes within the specified range.
     */
    function getNotesInRange(address _user, uint256 startIndex, uint256 endIndex)
        external
        view
        returns (Note[] memory)
    {
        if (startIndex > endIndex) {
            revert InvalidIndexRange();
        }
        if (endIndex >= userNotes[_user].length) {
            revert IndexOutOfBounds();
        }

        Note[] memory notesInRange = new Note[](endIndex - startIndex + 1);
        for (uint256 i = startIndex; i <= endIndex; i++) {
            notesInRange[i - startIndex] = userNotes[_user][i];
        }
        return notesInRange;
    }

    /**
     * @notice Sets the validator contract
     * @param _validatorContract The address of the validator contract
     */
    function setValidatorContract(address _validatorContract) external onlyOwner {
        validatorContract = _validatorContract;
    }

    /**
     * @notice Enables or disables the adding of notes
     * @param _enabled Whether note adding should be enabled
     */
    function setNoteAddingEnabled(bool _enabled) external onlyOwner {
        noteAddingEnabled = _enabled;
        emit NoteAddingToggled(_enabled);
    }
}
