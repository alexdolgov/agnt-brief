// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { IStargate } from "@stargatefinance/stg-evm-v2/src/interfaces/IStargate.sol";
import { DefaultAccessControlEnumerable } from "src/security/DefaultAccessControlEnumerable.sol";
import { IMoneyFiBridgeCrossChain } from "src/interfaces/IMoneyFiBridgeCrossChain.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { Origin, MessagingFee } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";
import { ContextUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol";
import { Context } from "@openzeppelin/contracts/utils/Context.sol";
import { DexCrossChainType } from "src/types/DexCrossChainType.sol";
import { IMoneyFiFundVault } from "src/interfaces/IMoneyFiFundVault.sol";
import { IMoneyFiController } from "src/interfaces/IMoneyFiController.sol";
import { ICircleV1TokenMessenger } from "src/interfaces/externals/cctp/ICircleV1TokenMessenger.sol";
import { ICircleV1TransferMitter } from "src/interfaces/externals/cctp/ICircleV1TransferMitter.sol";
import { IMoneyFiCCTPV1CrossChain } from "src/interfaces/IMoneyFiCCTPV1CrossChain.sol";
import { IMoneyFiCCTPV1Utils } from "src/interfaces/IMoneyFiCCTPV1Utils.sol";

contract MoneyFiCCTPV1CrossChain is
    UUPSUpgradeable,
    IMoneyFiBridgeCrossChain,
    IMoneyFiCCTPV1CrossChain,
    DefaultAccessControlEnumerable
{
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////////////////
                                USER-FACING STORAGE
    //////////////////////////////////////////////////////////////////////////*/

    /// @dev MessageTransmitter CCTP V1
    ICircleV1TokenMessenger public circleTokenMessenger;
    /// @dev Transfer mitter CCTP V1
    ICircleV1TransferMitter public transferMitter;
    // @dev MoneyFi cctp V1 helper
    IMoneyFiCCTPV1Utils public moneyFiCCTPV1Utils;
    /// @dev Usdc address from CCTP
    IERC20 public usdc;
    /// @dev Router cross chain address
    address public fundVault;
    /// @dev Controller address
    address public controller;
    // @dev LayerZeroWrapper address
    address public moneyFiLayerzero;
    /// @dev Mapping from nonce to attetation to messageCCTP
    mapping(bytes attestation => mapping(bytes messageCCTP => mapping(uint64 nonce => bool isClaim)))
        nonceToAttestationToMessageCCTPToIsClaim;
    /// @dev Mapping from chainId to walletAccount in destination chain to user address in
    /// current chain
    mapping(int256 chainId => mapping(bytes32 walletAccount => address user)) public chainIdToWalletAccountToUser;
    /// @dev Mapping from chain id  to user address in current chain to walletAccount in
    /// destination chain
    mapping(int256 chainId => mapping(address user => bytes32 walletAccount)) public chainIdToUserToWalletAccount;
    /// @dev Mapping from chain id to domain CCTP id and LayerZero endpoint id
    mapping(int256 chainId => ChainIdentity identity) public chainIdentity;

    uint256 public totalClaimFeeCCTPV1;

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address admin_,
        address moneyfiFundVault_,
        address controller_,
        address circleTokenMessenger_,
        address transferMitter_,
        address usdc_,
        address moneyFiLayerzero_,
        address moneyFiCCTPUtils_
    )
        external
        initializer
    {
        if (admin_ == address(0) || moneyfiFundVault_ == address(0) || controller_ == address(0)) {
            revert RequiredAddressNotNull();
        }

        __DefaultAccessControlEnumerable_init(admin_);
        circleTokenMessenger = ICircleV1TokenMessenger(circleTokenMessenger_);
        transferMitter = ICircleV1TransferMitter(transferMitter_);
        moneyFiCCTPV1Utils = IMoneyFiCCTPV1Utils(moneyFiCCTPUtils_);
        usdc = IERC20(usdc_);
        fundVault = moneyfiFundVault_;
        controller = controller_;
        moneyFiLayerzero = moneyFiLayerzero_;

        usdc.safeIncreaseAllowance(address(circleTokenMessenger), type(uint256).max);
        usdc.safeIncreaseAllowance(address(fundVault), type(uint256).max);
    }

    /*////////////////////////////////////////////////////////////////////////// 
                                    Mofidier 
    //////////////////////////////////////////////////////////////////////////*/
    modifier onlyRouter() {
        if (msg.sender != IMoneyFiController(controller).crossChainRouter()) {
            revert InvalidRouter();
        }
        _;
    }
    /*//////////////////////////////////////////////////////////////////////////. 
                                    Write Function
    //////////////////////////////////////////////////////////////////////////*/

    /// @inheritdoc IMoneyFiBridgeCrossChain
    function takeTransportDeposit(DexCrossChainType.DepositCrossChainParam memory _depositParam) external payable onlyRouter {
        if (_depositParam.tokenInForBridge != address(usdc)) {
            revert TokenNotSupportBridgeToTargetChain(_depositParam.tokenInForBridge);
        }

        (int256 dstChainId, bytes32 tokenOutFromBridge) = abi.decode(_depositParam.transportMsg, (int256, bytes32));

        // CCTP V1 domain chain id
        uint32 domainCCTPId = chainIdentity[dstChainId].domainCCTPId;
        // LayerZero endpoint id
        uint32 eid = chainIdentity[dstChainId].eid;
        bytes32 destinationCCTPV1Caller = chainIdentity[dstChainId].destinationCCTPV1Caller;

        if (domainCCTPId == 0 && eid == 0) {
            revert UnsupportedChain(dstChainId);
        }
        bytes32 receiver = chainIdToUserToWalletAccount[dstChainId][_depositParam.depositor];
        if (receiver == bytes32(0)) {
            revert InvalidReceiver(dstChainId, _depositParam.depositor);
        }

        IERC20(_depositParam.tokenInForBridge).safeTransferFrom(msg.sender, address(this), _depositParam.amountIn);

        // uint64 nonce = circleTokenMessenger.depositForBurn(_depositParam.amountIn, domainCCTPId, receiver, address(usdc));
        uint64 nonce = circleTokenMessenger.depositForBurnWithCaller(
            _depositParam.amountIn, domainCCTPId, receiver, address(usdc), destinationCCTPV1Caller
        );

        emit TakeTransportCCTP(
            _depositParam.depositor,
            _depositParam.tokenInForBridge,
            tokenOutFromBridge,
            address(this),
            receiver,
            _depositParam.amountIn,
            dstChainId,
            nonce,
            block.timestamp
        );
    }

    /// @inheritdoc IMoneyFiBridgeCrossChain
    function takeTransportWithdraw(DexCrossChainType.WithdrawCrossChainParam memory _withdrawParam) external payable onlyRouter {
        revert DisableFunction();
    }

    function claimFundCCTPToFundVault(ClaimFundCCTP memory _claimCCTP) external onlyAtLeastOperator {
        IMoneyFiCCTPV1Utils.DecodeMessage memory decodeMessage = moneyFiCCTPV1Utils.decodeMessage(_claimCCTP.messageCTTP);
        ChainIdentity memory chainIdentity = chainIdentity[_claimCCTP.sourceChainId];
        uint32 domainSrcChainId = chainIdentity.domainCCTPId;

        if(decodeMessage.msgSourceDomain != domainSrcChainId) {
            revert InvalidSourceChainDomainId(domainSrcChainId);
        }

        address userAddress = chainIdToWalletAccountToUser[_claimCCTP.sourceChainId][decodeMessage.msgSender];

        if(userAddress == address(0)) {
            revert InvalidClaimerCCTPV1(_claimCCTP.sourceChainId, decodeMessage.msgSender);
        }

        uint256 preUsdcBl = usdc.balanceOf(address(this));
        bool success = transferMitter.receiveMessage(_claimCCTP.messageCTTP, _claimCCTP.attestation);
        if(!success) {
            // revert 
        }

        uint256 claimAmount = usdc.balanceOf(address(this)) - preUsdcBl;

        if (claimAmount < _claimCCTP.claimFundCCTPV1Fee) {
            _claimCCTP.claimFundCCTPV1Fee = claimAmount;
            claimAmount == 0;
        } else {
            claimAmount -= _claimCCTP.claimFundCCTPV1Fee;
        }

        totalClaimFeeCCTPV1 += _claimCCTP.claimFundCCTPV1Fee;

        if (claimAmount > 0) {
            IMoneyFiFundVault(fundVault).depositFund(address(usdc), userAddress, claimAmount);
        }

        emit TransferFundFromCCTPWrapperToFundVault(
            userAddress,
            address(usdc),
            _claimCCTP.attestation, 
            _claimCCTP.messageCTTP, 
            domainSrcChainId, 
            decodeMessage.msgNonce, 
            claimAmount,
            _claimCCTP.claimFundCCTPV1Fee, 
            block.timestamp
        );
    }


    function getUserAddressFromChainIdAndWalletAccount(int256 chainId, bytes32 walletAccount) external view returns (address) {
        return chainIdToWalletAccountToUser[chainId][walletAccount];
    }

    function getWalletAccountFromChainIdAndUserAddress(int256 chainId, address user) external view returns (bytes32) {
        return chainIdToUserToWalletAccount[chainId][user];
    }

    /// @dev Set router
    function setFundVault(address _fundVault) external onlyAdmin {
        fundVault = _fundVault;
    }

    /// @dev Set controller
    function setController(address _controller) external onlyAdmin {
        controller = _controller;
    }

    function setChainIdentity(
        int256 _chainId,
        uint32 _domainCCTPId,
        uint32 _eid,
        bytes32 _destinationCCTPV1Caller
    )
        external
        onlyDelegateAdmin
    {
        chainIdentity[_chainId].domainCCTPId = _domainCCTPId;
        chainIdentity[_chainId].eid = _eid;
        chainIdentity[_chainId].destinationCCTPV1Caller = _destinationCCTPV1Caller;

        emit SetChainIdentity(_chainId, _domainCCTPId, _eid, _destinationCCTPV1Caller, block.timestamp);
    }

    function setWalletAccountAndAddress(int256 chainId, address user, bytes32 walletAccount) external {
        if (msg.sender != moneyFiLayerzero) {
            revert InvalidMoneyFiLayerZero();
        }

        if (chainIdToWalletAccountToUser[chainId][walletAccount] != address(0)) {
            revert AlreadySetWalletAccountAndAddress();
        }

        chainIdToUserToWalletAccount[chainId][user] = walletAccount;
        chainIdToWalletAccountToUser[chainId][walletAccount] = user;

        emit SetWalletAccountAndAddress(chainId, walletAccount, user, block.timestamp);
    }

    function setLayerZeroEndPoint(address _moneyFiLayerzero) external onlyDelegateAdmin{
        moneyFiLayerzero = _moneyFiLayerzero;
    }

    function setMoneyFiCCTPV1Utils(address _newMoneyFiCCTPV1Utils) external onlyDelegateAdmin{
        moneyFiCCTPV1Utils = IMoneyFiCCTPV1Utils(_newMoneyFiCCTPV1Utils); 
    }

    /// @dev Upgrade contract
    function _authorizeUpgrade(address _newImplementation) internal override onlyAdmin { }

    fallback() external payable { }
    receive() external payable { }
}
