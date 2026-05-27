// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

import {
    ConsolidationRequestFailed,
    FeeQueryFailed,
    NotEnoughETH,
    Unauthorized,
    WithdrawalRequestFailed
} from "./Errors.sol";
import { IEigenPodTypes } from "./interface/Eigenlayer-Slashing/IEigenPod.sol";
import { AccessManaged } from "@openzeppelin/contracts/access/manager/AccessManaged.sol";
import { Address } from "@openzeppelin/contracts/utils/Address.sol";

/**
 * @title NonRestakingWithdrawalCredentials
 * @author Puffer Finance
 * @notice Non retaked validators should point the withdrawal credentials to this contract
 */
contract NonRestakingWithdrawalCredentials is AccessManaged {
    /**
     * @notice Event emitted when a validator is requested to be switched to compounding withdrawal credentials
     * @param pubkey The public key of the validator
     */
    event SwitchToCompoundingWithdrawalCredentials(bytes pubkey);

    /**
     * @notice Event emitted when a withdrawal request is made
     * @param pubkey The public key of the validator
     * @param amountGwei The amount of ETH to withdraw (in Gwei)
     */
    event WithdrawalRequested(bytes pubkey, uint256 indexed amountGwei);

    /**
     * @notice Event emitted when a consolidation request is made
     * @param srcPubkey The public key of the source validator
     * @param targetPubkey The public key of the target validator
     */
    event ConsolidationRequested(bytes srcPubkey, bytes targetPubkey);

    // https://eips.ethereum.org/EIPS/eip-7002)
    address internal constant WITHDRAWAL_REQUEST_ADDRESS = 0x00000961Ef480Eb55e80D19ad83579A64c007002;
    // https://eips.ethereum.org/EIPS/eip-7251
    address internal constant CONSOLIDATION_REQUEST_ADDRESS = 0x0000BBdDc7CE488642fb579F8B00f3a590007251;

    string internal constant VERSION = "2.0.0";

    address public immutable vault;

    constructor(address accessManager) AccessManaged(accessManager) {
        // Because this is deployed via delegatecall through the NonRestakingWithdrawalCredentialsFactory, the vault is the msg.sender
        vault = msg.sender;
    }

    // Allow donations to the contract
    receive() external payable { }

    function withdrawETH() external {
        require(msg.sender == vault, Unauthorized());
        Address.sendValue(payable(vault), address(this).balance);
    }

    /**
     * @notice Request a withdrawal of restaked validators on EigenLayer
     * @param requests The requests to withdraw
     */
    function requestWithdrawal(IEigenPodTypes.WithdrawalRequest[] calldata requests) external payable restricted {
        uint256 fee = getWithdrawalRequestFee();
        // The remainder is donated and not refunded to the caller
        require(msg.value >= fee * requests.length, NotEnoughETH());

        for (uint256 i = 0; i < requests.length; ++i) {
            // We don't need to validate the length of the pubkeys as the precompile will revert if the pubkeys are of invalid length
            bytes memory callData = abi.encodePacked(requests[i].pubkey, requests[i].amountGwei);
            (bool ok,) = WITHDRAWAL_REQUEST_ADDRESS.call{ value: fee }(callData);
            require(ok, WithdrawalRequestFailed());
            emit WithdrawalRequested(requests[i].pubkey, requests[i].amountGwei);
        }
    }

    /**
     * @notice Request consolidation of validators
     * It is possible to consolidate a validator to itself, which will switch the withdrawal credentials to compounding withdrawal credentials (0x01 -> 0x02)
     * It is also possible to consolidate a validator from this withdrawal credentials to another withdrawal credentials
     * @dev We do not validate if the source validator belongs to this contract
     * @param requests The requests to consolidate
     */
    function requestConsolidation(IEigenPodTypes.ConsolidationRequest[] calldata requests)
        external
        payable
        restricted
    {
        uint256 fee = getConsolidationRequestFee();
        // The remainder is donated and not refunded to the caller
        require(msg.value >= fee * requests.length, NotEnoughETH());

        for (uint256 i = 0; i < requests.length; ++i) {
            IEigenPodTypes.ConsolidationRequest calldata request = requests[i];
            // We don't need to validate the length of the pubkeys as the precompile will revert if the pubkeys are invalid
            // The precompile just checks for the keys length, it doesn't check if it is an active validator

            bytes memory callData = bytes.concat(request.srcPubkey, request.targetPubkey);
            (bool ok,) = CONSOLIDATION_REQUEST_ADDRESS.call{ value: fee }(callData);
            require(ok, ConsolidationRequestFailed());

            // Emit event depending on whether this is a switch to 0x02, or a regular consolidation
            if (keccak256(request.srcPubkey) == keccak256(request.targetPubkey)) {
                emit SwitchToCompoundingWithdrawalCredentials(request.srcPubkey);
            } else {
                emit ConsolidationRequested(request.srcPubkey, request.targetPubkey);
            }
        }
    }

    /**
     * @notice Get the fee for a consolidation request
     * @return The fee for a consolidation request
     */
    function getConsolidationRequestFee() public view returns (uint256) {
        return _getFee(CONSOLIDATION_REQUEST_ADDRESS);
    }

    /**
     * @notice Get the fee for a withdrawal request
     * @return The fee for a withdrawal request
     */
    function getWithdrawalRequestFee() public view returns (uint256) {
        return _getFee(WITHDRAWAL_REQUEST_ADDRESS);
    }

    /**
     * @notice Get the fee for a request
     * @param predeploy The address of the predeploy
     * @return The fee for a request
     */
    function _getFee(address predeploy) internal view returns (uint256) {
        (bool success, bytes memory result) = predeploy.staticcall("");
        require(success && result.length == 32, FeeQueryFailed());
        return uint256(bytes32(result));
    }
}
