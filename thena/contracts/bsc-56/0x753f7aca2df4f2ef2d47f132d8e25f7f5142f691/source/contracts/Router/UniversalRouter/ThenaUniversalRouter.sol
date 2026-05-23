// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;


import "@openzeppelin/contracts/access/Ownable.sol";
import "./ExecuteCommands.sol";


contract ThenaUniversalRouter is ExecuteCommands, Ownable {
    

    address internal constant NOT_LOCKED_FLAG = address(1);
    address internal lockedBy = NOT_LOCKED_FLAG;


    constructor(address _factorySol, address _factory,address native,address _poolDeployer) ExecuteCommands(_factorySol, _factory,native,_poolDeployer) {}

    modifier isNotLocked() {
        if (msg.sender != address(this)) {
            if (lockedBy != NOT_LOCKED_FLAG) revert ContractLocked();
            lockedBy = msg.sender;
            _;
            lockedBy = NOT_LOCKED_FLAG;
        } else {
            _;
        }
    }


    modifier checkDeadline(uint256 deadline) {
        if (block.timestamp > deadline) revert TransactionDeadlinePassed();
        _;
    }


    /// @notice Execute the commands for the trade
    /// @param commands commands to use 
    /// @param inputs   input for the given command
    /// @param deadline deadline check
    function execute(bytes1[] calldata commands, bytes[] calldata inputs, uint256 deadline) external payable checkDeadline(deadline) {
        _execute(commands, inputs);
    } 


    function _execute(bytes1[] calldata commands, bytes[] calldata inputs) internal isNotLocked {

        bool success;
        bytes memory output;
        uint256 totCommands = commands.length;
        if (inputs.length != totCommands) revert LengthMismatch();

        // loop through all given commands, execute them and pass along outputs as defined
        for (uint256 i = 0; i < totCommands;) {
            bytes1 command = commands[i];
            (success, output) = _executeCommand(command, inputs[i]);
            if (!success) {
                revert ExecutionFailed({commandIndex: i, message: output});
            }
            unchecked {
                i++;
            }
        }

    }


    function recoverToken(bool native, address token, uint balance) external onlyOwner {
        if(native){
            TransferHelper.safeTransferNative(owner(), address(this).balance);
        } else {
            require(IERC20(token).balanceOf(address(this)) >= balance);
            TransferHelper.safeTransfer(token, owner(), balance);
        }        
    }
   

    error ContractLocked();
    error TransactionDeadlinePassed();
    error LengthMismatch();
    error ExecutionFailed(uint256 commandIndex, bytes message);

       

}