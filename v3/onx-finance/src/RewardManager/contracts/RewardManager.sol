// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "@openzeppelin/contracts/math/SafeMath.sol";

contract RewardManager {
    using SafeMath for uint;
    event ExecuteTransaction(address indexed target, uint value, string signature,  bytes data);

    address public admin;
    address public multisigWallet;

    constructor(address _wallet) public {
        admin = msg.sender;
        multisigWallet = _wallet;
    }

    receive() external payable { }

    modifier restricted() {
        require(msg.sender == multisigWallet || msg.sender == admin,
            "The sender has to be the multisig wallet or admin");
        _;
    }

    function setAdmin(address _pendingAdmin) public restricted {
        admin = _pendingAdmin;
    }

    function setMultisig(address _wallet) public restricted {
        multisigWallet = _wallet;
    }

    function executeTransaction(address target, uint value, string memory signature, bytes memory data) public restricted payable returns (bytes memory) {
        require(msg.sender == admin, "Timelock::executeTransaction: Call must come from admin.");

        bytes memory callData;

        if (bytes(signature).length == 0) {
            callData = data;
        } else {
            callData = abi.encodePacked(bytes4(keccak256(bytes(signature))), data);
        }

        // solium-disable-next-line security/no-call-value
        (bool success, bytes memory returnData) = target.call.value(value)(callData);
        require(success, "Transaction execution reverted.");

        emit ExecuteTransaction(target, value, signature, data);

        return returnData;
    }
}