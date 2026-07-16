//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {UnionToken} from "./utils/UnionToken.sol";
import {UToken} from "./utils/UToken.sol";
import {UserManager} from "./utils/UserManager.sol";
import {GnosisSafe} from "./utils/GnosisSafe.sol";
import {Enum} from "./utils/Enum.sol";

/**
 * @title UnionClubPlugin
 * @dev A contract for the Safe wallet plugin module.
 */
contract UnionClubPlugin {
    string public constant NAME = "Union Club Plugin";
    string public constant VERSION = "0.1.0";
    uint16 public constant WAD = 10000; //100 = 1%

    GnosisSafe public immutable safe;
    address public immutable userManager;
    address public immutable uToken;
    address public immutable unionToken;
    address public auth;
    uint public costToCall;
    uint public checkpoint;

    // the following vars are packed in one storage
    uint96 public maxAuthTrust;
    uint16 public callerPercent;
    uint16 public winnerPercent;
    uint32 public cooldown; // in seconds

    event AuthUpdated(address oldAuth, address newAuth);
    event RoundEntered(uint roundRewards, address winner, uint amountToWinner, uint checkpoint);
    event MaxAuthTrustUpdated(uint96 oldTrust, uint96 newTrust);
    event CostToCallUpdated(uint oldCost, uint newCost);
    event CallerPercentUpdated(uint16 oldCallPercent, uint16 newCallPercent);
    event WinnerPercentUpdated(uint16 oldWinnerPercent, uint16 newWinnerPercent);
    event CooldownUpdated(uint32 oldCooldown, uint32 cooldown);

    modifier onlySafe() {
        require(msg.sender == address(safe), "Not safe");
        _;
    }
    modifier onlyAuth() {
        require(msg.sender == address(auth), "Not auth");
        _;
    }

    constructor(
        address _safe,
        address _userManager,
        address _uToken,
        address _union,
        address _auth,
        uint96 _maxAuthTrust
    ) {
        safe = GnosisSafe(_safe);
        userManager = _userManager;
        uToken = _uToken;
        unionToken = _union;
        auth = _auth;
        maxAuthTrust = _maxAuthTrust;
        costToCall = 0.00042 ether;
        callerPercent = 1000;
        winnerPercent = 5000;
        cooldown = 0;
    }

    /**
     * @dev Fallback function that allows the contract to receive Ether and transfer it to the safe contract.
     */
    receive() external payable {
        // Transfer the received Ether to the safe contract
        (bool sent, ) = payable(address(safe)).call{value: msg.value}("");
        require(sent, "Failed to send ether");
    }

    function setAuth(address newAuth) external onlySafe {
        address oldAuth = auth;
        auth = newAuth;

        emit AuthUpdated(oldAuth, auth);
    }

    function setMaxAuthTrust(uint96 _maxAuthTrust) external onlySafe {
        uint96 oldMaxTrust = maxAuthTrust;
        maxAuthTrust = _maxAuthTrust;

        emit MaxAuthTrustUpdated(oldMaxTrust, maxAuthTrust);
    }

    function setCostToCall(uint _costToCall) external onlySafe {
        uint oldCost = costToCall;
        costToCall = _costToCall;

        emit CostToCallUpdated(oldCost, costToCall);
    }

    function setCallerPercent(uint16 _callerPercent) external onlySafe {
        require(_callerPercent + winnerPercent <= WAD, "Param error");

        uint16 oldCallerPercent = callerPercent;
        callerPercent = _callerPercent;

        emit CallerPercentUpdated(oldCallerPercent, callerPercent);
    }

    function setWinnerPercent(uint16 _winnerPercent) external onlySafe {
        require(_winnerPercent + callerPercent <= WAD, "Param error");

        uint16 oldWinnerPercent = winnerPercent;
        winnerPercent = _winnerPercent;

        emit WinnerPercentUpdated(oldWinnerPercent, winnerPercent);
    }

    function setCooldown(uint32 _cooldown) external onlySafe {
        uint32 oldCooldown = cooldown;
        cooldown = _cooldown;

        emit CooldownUpdated(oldCooldown, cooldown);
    }

    /**
     * @dev The `feelingLucky` function is a payable function that allows users to participate the game.
     * It checks if the user has sent enough funds to participate and if enough time has passed since the last round.
     * If the conditions are met, the function updates the checkpoint, transfers the funds to a safe contract,
     * selects a random winner from a list of club members, calculates the rewards, and distributes them accordingly.
     */
    function feelingLucky() external payable {
        require(msg.value >= costToCall, "Not enough fee");

        require(block.timestamp >= checkpoint + cooldown, "Call too early");

        // Update the checkpoint every time this function is called
        checkpoint = block.timestamp;

        (bool sent, ) = payable(address(safe)).call{value: msg.value}("");
        require(sent, "Failed to send Ether");

        UnionToken unionTokenContract = UnionToken(unionToken);
        uint unionBefore = unionTokenContract.balanceOf(address(safe));
        _withdrawRewards();
        uint unionAfter = unionTokenContract.balanceOf(address(safe));
        uint diff = unionAfter - unionBefore;

        address winner = address(0);
        uint amountToWinner = 0;
        if (diff > 0) {
            // Send the rewards to the caller
            uint amountToCaller = (diff * callerPercent) / WAD;
            _safeUnionTransfer(msg.sender, amountToCaller);

            // Get the safe's vouchees count
            UserManager userManagerContract = UserManager(userManager);
            uint voucheeCount = userManagerContract.getVoucheeCount(address(safe));
            uint index = _random() % voucheeCount;
            winner = userManagerContract.vouchees(address(safe), index);

            if (validateWinner(winner)) {
                amountToWinner = (diff * winnerPercent) / WAD;
                // Send the rewards to the winner
                _safeUnionTransfer(winner, amountToWinner);
                // Send the rest back to the safe
                _safeUnionTransfer(address(safe), diff - amountToCaller - amountToWinner);
            } else {
                // Send all the rest to the safe
                _safeUnionTransfer(address(safe), diff - amountToCaller);
            }
        }

        emit RoundEntered(diff, winner, amountToWinner, checkpoint);
    }

    /**
     * @dev Updates the trust amount for club members in the UnionClubPlugin contract.
     * @param membersToUpdate An array of member addresses to update the trust amount for.
     * @param amounts An array of trust amounts corresponding to the members in `membersToUpdate`.
     */
    function setTrust(address[] memory membersToUpdate, uint96[] memory amounts) external onlyAuth {
        require(membersToUpdate.length == amounts.length, "Array lengths not equal");

        bytes4 updateTrustFunc = bytes4(keccak256("updateTrust(address,uint96)"));
        bytes memory data;

        for (uint i = 0; i < membersToUpdate.length; i++) {
            address member = membersToUpdate[i];
            uint96 amount = amounts[i];

            if (member == address(0) || amount > maxAuthTrust) {
                // Don't block the next item to be updated even the current params are incorrect
                continue;
            }

            data = abi.encodeWithSelector(updateTrustFunc, member, amount);
            require(safe.execTransactionFromModule(userManager, 0, data, Enum.Operation.Call), "UpdateTrust() failed");
        }
    }

    function withdrawRewards() external onlySafe {
        _withdrawRewards();
    }

    /**
     * @dev Checks if a given address is a club member and is not overdue in order to determine if they are eligible to be a winner.
     * @param winner The address to be checked for winner eligibility.
     * @return bool Returns true if the address is a club member and not overdue, indicating that the address is eligible to be a winner. Otherwise, it returns false.
     */
    function validateWinner(address winner) public view returns (bool) {
        UserManager userManagerContract = UserManager(userManager);
        UToken uTokenContract = UToken(uToken);

        bool isMember = userManagerContract.checkIsMember(winner);
        bool isOverdue = uTokenContract.checkIsOverdue(winner);

        return isMember && !isOverdue;
    }

    /**
     * @dev Withdraws rewards from the UserManager contract.
     */
    function _withdrawRewards() private {
        bytes memory data = abi.encodeWithSignature("withdrawRewards()");
        require(safe.execTransactionFromModule(userManager, 0, data, Enum.Operation.Call), "WithdrawRewards() failed");
    }

    /**
     * @dev Transfers a specified amount of UNION tokens to a recipient address.
     * @param recipient The address of the recipient.
     * @param amount The amount of tokens to be transferred.
     */
    function _safeUnionTransfer(address recipient, uint amount) private {
        bytes memory data = abi.encodeWithSignature("transfer(address,uint256)", recipient, amount);
        require(safe.execTransactionFromModule(unionToken, 0, data, Enum.Operation.Call), "Transfer UNION failed");
    }

    /**
     * @dev Generates a random number based on the current timestamp and the list of member addresses.
     * @return The random number generated by the function.
     */
    function _random() private view returns (uint256) {
        bytes32 hash = keccak256(abi.encodePacked(block.timestamp, msg.sender));
        return uint256(hash);
    }
}
