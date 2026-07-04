// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.24;

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {IGeneralError} from "../common/IGeneralError.sol";
import {Agent} from "./Agent.sol";
import {AgentSigVerifier} from "./AgentSigVerifier.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";

contract Agent712 is IGeneralError, AccessControlUpgradeable {
    bytes32 private constant CONTRACT_ID = "Agent712";
    bytes32 public constant BATCH_ROLE = keccak256("BATCH_ROLE");

    struct PermitBatchArg {
        address owner;
        address spender;
        uint256 value;
        uint256 deadline;
        uint8 v;
        bytes32 r;
        bytes32 s;
    }

    event Result(uint256 index, bool isSuccess, string reason, uint256 errorCode, bytes data);
    event PermitSuccess(address owner, address spender, uint256 value);
    event PermitFailed(address owner, address spender, uint256 value);

    Agent public agent;
    uint256 public batchWithdrawCheckpoint;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address defaultAdmin, Agent _agent) public initializer {
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        agent = _agent;
    }

    function batch712(
        AgentSigVerifier.Message[] calldata message,
        bytes[] calldata sig,
        bytes[] calldata delegateSig,
        uint256[] calldata delegateSigTs
    ) external onlyRole(BATCH_ROLE) {
        if (
            message.length != sig.length ||
            message.length != delegateSig.length ||
            message.length != delegateSigTs.length
        ) {
            revert GeneralError(CONTRACT_ID, 400);
        }
        for (uint256 i; i < message.length; i++) {
            try agent.opEIP712(message[i], sig[i], delegateSig[i], delegateSigTs[i]) {
                emit Result(i, true, "", 0, "");
            } catch Error(string memory reason) {
                emit Result(i, false, reason, 0, "");
            } catch Panic(uint errorCode) {
                emit Result(i, false, "", errorCode, "");
            } catch (bytes memory data) {
                emit Result(i, false, "", 0, data);
            }
        }
    }

    function batchWithdraw() external {
        uint256 lastCheckPoint = batchWithdrawCheckpoint;
        uint256 newCheckPoint = lastCheckPoint;
        uint256 numWithdrawals = agent.getWithdrawalCount();
        for (uint256 i = lastCheckPoint; i < Math.min(lastCheckPoint + 100, numWithdrawals); i++) {
            (, , /*address user*/ /*uint256 amount*/ uint256 timeUnlock, bool isCompleted) = agent.withdrawals(i);
            if (timeUnlock > block.timestamp) {
                break;
            }
            if (!isCompleted) {
                agent.withdraw(i);
            }
            newCheckPoint = i + 1;
        }
        if (newCheckPoint > lastCheckPoint) {
            batchWithdrawCheckpoint = newCheckPoint;
        }
    }

    function batchClaimReward(address[] calldata users) external {
        for (uint256 i; i < users.length; i++) {
            agent.claimReward(users[i]);
        }
    }

    function permitBatch(IERC20Permit erc20PermitToken, PermitBatchArg[] calldata argList) external {
        for (uint256 i = 0; i < argList.length; i++) {
            PermitBatchArg calldata arg = argList[i];
            address owner = arg.owner;
            address spender = arg.spender;
            uint256 value = arg.value;
            uint256 deadline = arg.deadline;
            uint8 v = arg.v;
            bytes32 r = arg.r;
            bytes32 s = arg.s;
            try erc20PermitToken.permit(owner, spender, value, deadline, v, r, s) {
                emit PermitSuccess(owner, spender, value);
            } catch {
                emit PermitFailed(owner, spender, value);
            }
        }
    }
}
