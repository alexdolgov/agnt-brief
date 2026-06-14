// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ERC1155Holder} from "@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol";

import {IExchange} from "../ExchangeFee/interfaces/IExchange.sol";
import {ICTFExchange} from "../NegRisk/interfaces/ICTFExchange.sol";
import {INegRiskAdapter} from "../NegRisk/interfaces/INegRiskAdapter.sol";
import {IConditionalTokens} from "../UMA/interfaces/IConditionalTokens.sol";

interface IFeeModule {
    function withdrawFees(address to, uint256 id, uint256 amount) external;

    function collateral() external view returns (address);
    function exchange() external view returns (IExchange);
}

/**
 * @title ConditionalTokensFeesHandler
 * @notice This contract handles the withdrawal of fees from the fee module contracts. USDT cannot be withdrawn through this contract.
 * @author predict.fun protocol team
 */
contract ConditionalTokensFeesHandler is AccessControl, ERC1155Holder {
    using SafeERC20 for IERC20;

    bytes32 public constant WITHDRAW_AND_MERGE_ROLE = keccak256("WITHDRAW_AND_MERGE_ROLE");

    IFeeModule public immutable FEE_MODULE;
    ICTFExchange public immutable CTF_EXCHANGE;

    IFeeModule public immutable NEG_RISK_FEE_MODULE;
    ICTFExchange public immutable NEG_RISK_CTF_EXCHANGE;

    IConditionalTokens public immutable CTF;
    IConditionalTokens public immutable NEG_RISK_CTF;
    IERC20 public immutable COLLATERAL;

    INegRiskAdapter public immutable NEG_RISK_ADAPTER;

    /**
     * @notice The address that will receive the fees in collateral.
     */
    address public collateralReceiver;

    /**
     * @notice The address that will receive the fees in CTF.
     */
    address public ctfReceiver;

    enum ConditionalTokenType {
        Binary,
        NegRisk
    }

    event CTFsWithdrawn(ConditionalTokenType tokenType, uint256[] tokenIds);
    event CollateralReceiverUpdated(address _collateralReceiver);
    event CtfReceiverUpdated(address _ctfReceiver);
    event WithdrawnAndMerged(ConditionalTokenType tokenType, uint256[] tokenIds);
    event TokenWithdrawn(address indexed token, uint256 amount);

    error CollateralMismatch();
    error InvalidCollateralReceiver();
    error InvalidCtfReceiver();
    error InvalidTokenId();
    error InvalidConditionId();
    error NothingToWithdraw();

    constructor(
        address _feeModule,
        address _negRiskFeeModule,
        address _ctf,
        address _negRiskCtf,
        address _collateralReceiver,
        address _ctfReceiver
    ) {
        FEE_MODULE = IFeeModule(_feeModule);
        NEG_RISK_FEE_MODULE = IFeeModule(_negRiskFeeModule);
        CTF = IConditionalTokens(_ctf);
        NEG_RISK_CTF = IConditionalTokens(_negRiskCtf);
        // fee module and neg risk fee module have the same collateral
        COLLATERAL = IERC20(FEE_MODULE.collateral());

        if (address(COLLATERAL) != NEG_RISK_FEE_MODULE.collateral()) {
            revert CollateralMismatch();
        }

        CTF_EXCHANGE = ICTFExchange(address(FEE_MODULE.exchange()));
        NEG_RISK_CTF_EXCHANGE = ICTFExchange(address(NEG_RISK_FEE_MODULE.exchange()));

        NEG_RISK_ADAPTER = INegRiskAdapter(NEG_RISK_CTF_EXCHANGE.getCtf());

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        NEG_RISK_CTF.setApprovalForAll(address(NEG_RISK_ADAPTER), true);

        _setCollateralReceiver(_collateralReceiver);
        _setCtfReceiver(_ctfReceiver);
    }

    /**
     * @notice Set the address that will receive the fees in collateral. Only callable by admins.
     *
     * @param _collateralReceiver The collateral receiver address
     */
    function setCollateralReceiver(address _collateralReceiver) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setCollateralReceiver(_collateralReceiver);
    }

    /**
     * @notice Set the address that will receive the fees in CTF. Only callable by admins.
     *
     * @param _ctfReceiver The CTF receiver address
     */
    function setCtfReceiver(address _ctfReceiver) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setCtfReceiver(_ctfReceiver);
    }

    /**
     * @notice Withdraw and merge CTF tokens from the contract. Only callable by admins.
     *
     * @param tokenType The type of conditional tokens.
     * @param tokenIds The token ids to withdraw and merge.
     */
    function withdrawAndMerge(
        ConditionalTokenType tokenType,
        uint256[] calldata tokenIds
    ) external onlyRole(WITHDRAW_AND_MERGE_ROLE) {
        IFeeModule feeModule = tokenType == ConditionalTokenType.Binary ? FEE_MODULE : NEG_RISK_FEE_MODULE;
        ICTFExchange ctfExchange = tokenType == ConditionalTokenType.Binary ? CTF_EXCHANGE : NEG_RISK_CTF_EXCHANGE;
        IConditionalTokens ctf = tokenType == ConditionalTokenType.Binary ? CTF : NEG_RISK_CTF;

        if (tokenIds.length == 0) {
            revert NothingToWithdraw();
        }

        for (uint256 i; i < tokenIds.length; ++i) {
            uint256 tokenId = tokenIds[i];

            // USDT cannot be withdrawn through this contract.
            if (tokenId == 0) {
                revert InvalidTokenId();
            }

            (uint256 complement, bytes32 conditionId) = ctfExchange.registry(tokenId);

            if (complement == 0) {
                revert InvalidTokenId();
            }

            if (conditionId == bytes32(0)) {
                revert InvalidConditionId();
            }

            {
                uint256 tokenBalance = ctf.balanceOf(address(feeModule), tokenId);
                if (tokenBalance > 0) {
                    feeModule.withdrawFees(address(this), tokenId, tokenBalance);
                }

                uint256 complementBalance = ctf.balanceOf(address(feeModule), complement);
                if (complementBalance > 0) {
                    feeModule.withdrawFees(address(this), complement, complementBalance);
                }
            }

            uint256 selfTokenBalance = ctf.balanceOf(address(this), tokenId);
            uint256 selfComplementBalance = ctf.balanceOf(address(this), complement);
            uint256 redeemAmount = selfTokenBalance > selfComplementBalance ? selfComplementBalance : selfTokenBalance;

            if (redeemAmount > 0) {
                if (tokenType == ConditionalTokenType.Binary) {
                    uint256[] memory partition = new uint256[](2);
                    partition[0] = 1;
                    partition[1] = 2;
                    ctf.mergePositions(COLLATERAL, bytes32(0), conditionId, partition, redeemAmount);
                } else {
                    NEG_RISK_ADAPTER.mergePositions(conditionId, redeemAmount);
                }
            }
        }

        uint256 collateralBalance = COLLATERAL.balanceOf(address(this));
        if (collateralBalance > 0) {
            COLLATERAL.safeTransfer(collateralReceiver, collateralBalance);
        }

        emit WithdrawnAndMerged(tokenType, tokenIds);
    }

    /**
     * @notice Withdraw ERC-20 token from the contract. Only callable by admins.
     *
     * @param token The address of the token to withdraw.
     */
    function withdrawToken(address token) external onlyRole(WITHDRAW_AND_MERGE_ROLE) {
        uint256 amount = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransfer(collateralReceiver, amount);

        emit TokenWithdrawn(token, amount);
    }

    /**
     * @notice Withdraw CTF tokens from the contract. Only callable by admins.
     *
     * @param tokenType The type of conditional tokens.
     * @param tokenIds The token ids to withdraw.
     */
    function withdrawCTF(
        ConditionalTokenType tokenType,
        uint256[] calldata tokenIds
    ) external onlyRole(WITHDRAW_AND_MERGE_ROLE) {
        IConditionalTokens ctf = tokenType == ConditionalTokenType.Binary ? CTF : NEG_RISK_CTF;
        uint256[] memory amounts = new uint256[](tokenIds.length);
        for (uint256 i; i < tokenIds.length; ++i) {
            amounts[i] = ctf.balanceOf(address(this), tokenIds[i]);
        }

        ctf.safeBatchTransferFrom(address(this), ctfReceiver, tokenIds, amounts, "");

        emit CTFsWithdrawn(tokenType, tokenIds);
    }

    /*///////////////////////////////////////////////////////////////////
                            OVERRIDES
    //////////////////////////////////////////////////////////////////*/

    function supportsInterface(bytes4 interfaceId) public view override(ERC1155Holder, AccessControl) returns (bool) {
        return
            interfaceId == type(ERC1155Holder).interfaceId ||
            interfaceId == type(AccessControl).interfaceId ||
            super.supportsInterface(interfaceId);
    }

    function _setCollateralReceiver(address _collateralReceiver) internal {
        if (_collateralReceiver == address(0)) {
            revert InvalidCollateralReceiver();
        }

        collateralReceiver = _collateralReceiver;
        emit CollateralReceiverUpdated(_collateralReceiver);
    }

    function _setCtfReceiver(address _ctfReceiver) internal {
        if (_ctfReceiver == address(0)) {
            revert InvalidCtfReceiver();
        }

        ctfReceiver = _ctfReceiver;
        emit CtfReceiverUpdated(_ctfReceiver);
    }
}
