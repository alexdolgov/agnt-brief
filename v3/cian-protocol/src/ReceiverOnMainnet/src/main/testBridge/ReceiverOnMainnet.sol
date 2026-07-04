// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "../libraries/Errors.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "../../interfaces/crossChain/layerZero/IOFT.sol";
import "../../interfaces/crossChain/CCIP/IRouterClient.sol";
import "../../interfaces/maple/ISyrupRouter.sol";
import "../../interfaces/maple/IMaplePool.sol";
import "../../interfaces/maple/IMapleWithdrawalManager.sol";

contract ReceiverOnMainnet is Ownable {
    using SafeERC20 for IERC20;

    address public constant USDT = 0xdAC17F958D2ee523a2206206994597C13D831ec7; // decimals: 6
    address public constant SyrupUSDT = 0x356B8d89c1e1239Cbbb9dE4815c39A1474d5BA7D; // decimals: 6

    // The endPoint Id of the plama chain of layer zero
    uint32 internal constant ENDPOINT_ID = 30383;

    // The chain selector of the eth mainnet of CCIP
    uint64 internal constant PLASMA_SELECTOR = 9335212494177455608;

    // The address of ccip router client on the eth mainnet
    IRouterClient internal constant CCIP_ROUTER_CLIENT = IRouterClient(0x80226fc0Ee2b096224EeAc085Bb9a8cba1146f7D);

    // The address of tether USDT OFT adapter on the eth mainnet
    IOFT internal constant OFT_ADAPTER = IOFT(0x6C96dE32CEa08842dcc4058c14d3aaAD7Fa41dee);

    ISyrupRouter internal constant SYRUP_ROUTER = ISyrupRouter(0xF007476Bb27430795138C511F18F821e8D1e5Ee2);

    // The address of maple SyrupUSDT withdraw manager
    IMapleWithdrawalManager internal constant WITHDRAWAL_MANAGER =
        IMapleWithdrawalManager(0x86eBDf902d800F2a82038290B6DBb2A5eE29eB8C);

    // The depositData when call syrup router deposit
    bytes32 public depositData = bytes32(bytes("0:cian"));

    // The address of cross chain receiver on the eth mainnet
    address public plasmaReceiver;

    event CrossUSDTToPlasma(bytes32 guid, uint64 nonce, uint256 amountSend, uint256 fee);
    event CrossSyrupUSDTToPlasma(bytes32 messageId, uint256 amountSend, uint256 fee);

    constructor(address _admin, address _plasmaReceiver) Ownable(_admin) {
        if (_admin == address(0)) revert Errors.InvalidAdmin();
        if (_plasmaReceiver == address(0)) revert Errors.InvalidCrossChainReceiver();
        plasmaReceiver = _plasmaReceiver;

        // for minting
        IERC20(USDT).safeIncreaseAllowance(address(SYRUP_ROUTER), type(uint256).max);
        // for cross chain
        IERC20(USDT).safeIncreaseAllowance(address(OFT_ADAPTER), type(uint256).max);
        IERC20(SyrupUSDT).safeIncreaseAllowance(address(CCIP_ROUTER_CLIENT), type(uint256).max);
    }

    function updatePlasmaReceiver(address _plasmaReceiver) external onlyOwner {
        if (_plasmaReceiver == address(0)) revert Errors.InvalidCrossChainReceiver();
        plasmaReceiver = _plasmaReceiver;
    }

    /**
     * @dev Deposit USDT to maple syrup router to mint SyrupUSDT.
     * @param _amount The amount of USDT to deposit.
     * @return shares_ The amount of SyrupUSDT minted.
     */
    function depositToSyrupUSDT(uint256 _amount) external onlyOwner returns (uint256 shares_) {
        shares_ = SYRUP_ROUTER.deposit(_amount, depositData);
    }

    /**
     * @dev Deposit USDT to maple syrup router to mint SyrupUSDT at first time.
     * @param _amount The amount of USDT to deposit.
     * @param _signature The signature get by maple, used to authorize.
     * @return shares_ The amount of SyrupUSDT minted.
     */
    function depositToSyrupUSDTWithSignature(uint256 _amount, bytes memory _signature)
        external
        onlyOwner
        returns (uint256 shares_)
    {
        (uint256 bitmap, uint256 deadline, uint8 v, bytes32 r, bytes32 s) =
            abi.decode(_signature, (uint256, uint256, uint8, bytes32, bytes32));
        shares_ = SYRUP_ROUTER.authorizeAndDeposit(bitmap, deadline, v, r, s, _amount, depositData);
    }

    /**
     * @dev Call maple pool to request redeem SyrupUSDT to USDT.
     * @param _amount The amount of SyrupUSDT to redeem.
     * @return amountEscrowed_ The amount of SyrupUSDT escrowed.
     */
    function requestRedeemSyrupUSDT(uint256 _amount) external onlyOwner returns (uint256 amountEscrowed_) {
        if (_amount == type(uint256).max) {
            _amount = IERC20(SyrupUSDT).balanceOf(address(this));
        }
        amountEscrowed_ = IMaplePool(SyrupUSDT).requestRedeem(_amount, address(this));
    }

    /**
     * @dev Send USDT to eth mainnet to mint SyrupUSDT.
     * @param _amount The amount of USDT to send.
     * @return messageId_ The message id of the message sent.
     */
    function sendUSDT(uint256 _amount) external payable onlyOwner returns (bytes32 messageId_) {
        if (_amount == type(uint256).max) {
            _amount = IERC20(USDT).balanceOf(address(this));
        }

        if (plasmaReceiver == address(0)) revert Errors.InvalidCrossChainReceiver();
        SendParam memory sendParam_ = SendParam({
            dstEid: ENDPOINT_ID,
            to: bytes32(uint256(uint160(plasmaReceiver))),
            amountLD: _amount,
            minAmountLD: _amount,
            extraOptions: "",
            composeMsg: "",
            oftCmd: ""
        });

        MessagingFee memory messagingFee_ = OFT_ADAPTER.quoteSend(sendParam_, false);
        (MessagingReceipt memory messageReceipt_,) =
            OFT_ADAPTER.send{value: messagingFee_.nativeFee}(sendParam_, messagingFee_, msg.sender);

        messageId_ = messageReceipt_.guid;

        // refund all remain balance to msg.sender
        // manually process refunds because Tether's OFT contract imposes limits on message fees
        uint256 refundAssets_ = address(this).balance;
        if (refundAssets_ > 0) {
            (bool success,) = payable(msg.sender).call{value: refundAssets_}("");
            require(success, "refund failed");
        }

        emit CrossUSDTToPlasma(messageReceipt_.guid, messageReceipt_.nonce, _amount, messageReceipt_.fee.nativeFee);
    }

    /**
     * @dev Send SyrupUSDT to eth mainnet to redeem to USDT.
     * @param _amount The amount of SyrupUSDT to send.
     * @return messageId_ The message id of the message sent.
     */
    function sendSyrupUSDT(uint256 _amount) external payable onlyOwner returns (bytes32 messageId_) {
        if (_amount == type(uint256).max) {
            _amount = IERC20(SyrupUSDT).balanceOf(address(this));
        }

        Client.EVMTokenAmount[] memory tokenAmounts_ = new Client.EVMTokenAmount[](1);
        tokenAmounts_[0] = Client.EVMTokenAmount({token: SyrupUSDT, amount: _amount});

        Client.EVM2AnyMessage memory message_ = Client.EVM2AnyMessage({
            receiver: abi.encode(plasmaReceiver),
            data: "",
            tokenAmounts: tokenAmounts_,
            feeToken: address(0),
            extraArgs: ""
        });

        uint256 fee_ = CCIP_ROUTER_CLIENT.getFee(PLASMA_SELECTOR, message_);

        if (msg.value < fee_) revert Errors.InsufficientFee();

        messageId_ = CCIP_ROUTER_CLIENT.ccipSend{value: fee_}(PLASMA_SELECTOR, message_);

        // refund all remain balance to msg.sender
        (bool success,) = payable(msg.sender).call{value: address(this).balance}("");
        require(success, "refund failed");

        emit CrossSyrupUSDTToPlasma(messageId_, _amount, fee_);
    }

    /**
     * @dev Get the fee of sending USDT0 to eth mainnet.
     * @param _amount The amount of USDT0 to send.
     * @return fee_ The message fee.
     */
    function getFeeOfSendUSDT(uint256 _amount) external view returns (uint256 fee_) {
        if (_amount == type(uint256).max) {
            _amount = IERC20(USDT).balanceOf(address(this));
        }

        if (plasmaReceiver == address(0)) revert Errors.InvalidCrossChainReceiver();
        SendParam memory sendParam_ = SendParam({
            dstEid: ENDPOINT_ID,
            to: bytes32(uint256(uint160(plasmaReceiver))),
            amountLD: _amount,
            minAmountLD: _amount,
            extraOptions: "",
            composeMsg: "",
            oftCmd: ""
        });

        MessagingFee memory messagingFee_ = OFT_ADAPTER.quoteSend(sendParam_, false);
        fee_ = messagingFee_.nativeFee;
    }

    /**
     * @dev Get the fee of sending USDT0 to eth mainnet.
     * @param _amount The amount of USDT0 to send.
     * @return fee_ The message fee.
     */
    function getFeeOfSendSyrupUSDT(uint256 _amount) external view returns (uint256 fee_) {
        if (_amount == type(uint256).max) {
            _amount = IERC20(SyrupUSDT).balanceOf(address(this));
        }

        Client.EVMTokenAmount[] memory tokenAmounts_ = new Client.EVMTokenAmount[](1);
        tokenAmounts_[0] = Client.EVMTokenAmount({token: SyrupUSDT, amount: _amount});

        if (plasmaReceiver == address(0)) revert Errors.InvalidCrossChainReceiver();
        Client.EVM2AnyMessage memory message_ = Client.EVM2AnyMessage({
            receiver: abi.encode(plasmaReceiver),
            data: "",
            tokenAmounts: tokenAmounts_,
            feeToken: address(0),
            extraArgs: ""
        });

        fee_ = CCIP_ROUTER_CLIENT.getFee(PLASMA_SELECTOR, message_);
    }

    /**
     * @dev Get the requestId and amount of SyrupUSDT in redeeming.
     * @return requestId_ The requestId of the withdrawal request.
     * @return shares_ The amount of SyrupUSDT in redeeming.
     */
    function getSyrupUSDTInRedeemed() public view returns (uint128 requestId_, uint256 shares_) {
        requestId_ = WITHDRAWAL_MANAGER.requestIds(address(this));
        (, shares_) = WITHDRAWAL_MANAGER.requests(requestId_);
    }

    function refund() external onlyOwner {
        IERC20(USDT).safeTransfer(msg.sender, IERC20(USDT).balanceOf(address(this)));
        IERC20(SyrupUSDT).safeTransfer(msg.sender, IERC20(SyrupUSDT).balanceOf(address(this)));
    }
}
