// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import { IStakingModule } from "./interface/IStakingModule.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { StakedUsbd } from "./StakedUsbd.sol";
import { StakedUsbdOftAdapter } from "./StakedUsbdOftAdapter.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { SendParam } from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import { MessagingFee } from "@layerzerolabs/oft-evm/contracts/OFTCore.sol";

import { EventsLib } from "./libraries/EventsLib.sol";
import { ErrorsLib } from "./libraries/ErrorsLib.sol";
import { PRICE_DECIMAL_PRECISION } from "./libraries/ConstantsLib.sol";
import { compoundValue } from "./functions/CompoundCalculator.sol";

contract StakingModule is Ownable, IStakingModule {
    using SafeERC20 for IERC20;

    /// @inheritdoc IStakingModule
    IERC20 public immutable usbd;

    /// @inheritdoc IStakingModule
    StakedUsbd public immutable susbd;

    /// @inheritdoc IStakingModule
    StakedUsbdOftAdapter public susbdOftAdapter;

    /// @inheritdoc IStakingModule
    uint256 public rate;
    /// @inheritdoc IStakingModule
    uint256 public lastUpdated;
    /// @inheritdoc IStakingModule
    uint256 public lastPrice = PRICE_DECIMAL_PRECISION;

    /// @param _usbd The address of the USBD token
    /// @param _susbd The address of the sUSBD token
    /// @param _owner Specially permissioned address
    constructor(address _usbd, address _susbd, address _owner) Ownable(_owner) {
        usbd = IERC20(_usbd);
        susbd = StakedUsbd(_susbd);

        lastUpdated = block.timestamp;
    }

    // -- USER FUNCTIONS -- //

    /// @inheritdoc IStakingModule
    function deposit(uint256 _usbdAmount, address _receiver) external returns (uint256 _susbdAmount) {
        usbd.safeTransferFrom(msg.sender, address(this), _usbdAmount);

        _susbdAmount = _previewDeposit(_usbdAmount);

        susbd.mint(_receiver, _susbdAmount);

        emit EventsLib.Deposit(msg.sender, _receiver, _usbdAmount, _susbdAmount, block.timestamp);
    }

    /// @inheritdoc IStakingModule
    function deposit(
        SendParam calldata sendParam,
        MessagingFee calldata messagingFee
    ) external payable returns (uint256 _usbdAmount, uint256 _susbdAmount) {
        _susbdAmount = sendParam.amountLD;

        // as the amount argument is in sUSBD, we need to calculate USBD
        _usbdAmount = _previewRedeem(_susbdAmount);

        usbd.safeTransferFrom(msg.sender, address(this), _usbdAmount);

        susbd.mint(address(this), _susbdAmount);

        susbd.approve(address(susbdOftAdapter), _susbdAmount);

        susbdOftAdapter.send{ value: msg.value }(sendParam, messagingFee, payable(msg.sender));

        emit EventsLib.DepositCrossChain(
            msg.sender,
            address(uint160(uint256(sendParam.to))),
            sendParam.dstEid,
            _usbdAmount,
            _susbdAmount,
            block.timestamp
        );
    }

    /// @inheritdoc IStakingModule
    function requestRedeem(uint256 _susbdAmount, address _receiver) external returns (uint256 _usdAmount) {
        susbd.burnFrom(msg.sender, _susbdAmount);

        // USBD is always assumed to be 1$ by the BIMA protocol, therefore
        // using `_usdAmount` here is the same as using `_usbdAmount`
        _usdAmount = _previewRedeem(_susbdAmount);

        emit EventsLib.RequestRedeem(msg.sender, _receiver, _susbdAmount, _usdAmount, block.timestamp);
    }

    // -- VIEW FUNCTIONS -- //

    /// @inheritdoc IStakingModule
    function price() external view returns (uint256) {
        return _price();
    }

    /// @inheritdoc IStakingModule
    function previewDeposit(uint256 _usbdAmount) external view returns (uint256 _susbdAmount) {
        _susbdAmount = _previewDeposit(_usbdAmount);
    }

    /// @inheritdoc IStakingModule
    function previewRedeem(uint256 _susbdAmount) external view returns (uint256 _usbdAmount) {
        _usbdAmount = _previewRedeem(_susbdAmount);
    }

    // -- OWNER  FUNCTIONS -- //

    /// @inheritdoc IStakingModule
    function setRate(uint256 _newRate) external onlyOwner {
        lastPrice = _price();

        emit EventsLib.SetRate(msg.sender, rate, _newRate, block.timestamp);

        rate = _newRate;
        lastUpdated = block.timestamp;
    }

    /// @inheritdoc IStakingModule
    function setSusbdOftAdapter(address _susbdOftAdapter) external onlyOwner {
        emit EventsLib.SetSusbdOftAdapter(msg.sender, address(susbdOftAdapter), _susbdOftAdapter, block.timestamp);

        susbdOftAdapter = StakedUsbdOftAdapter(_susbdOftAdapter);
    }

    /// @inheritdoc IStakingModule
    function recover(IERC20 _token, address _to) external onlyOwner {
        uint256 amount = _token.balanceOf(address(this));

        _token.safeTransfer(_to, amount);

        emit EventsLib.Recover(msg.sender, address(_token), _to, amount, block.timestamp);
    }

    /// @inheritdoc IStakingModule
    function recover(IERC20 _token, address _to, uint256 _amount) external onlyOwner {
        _token.safeTransfer(_to, _amount);

        emit EventsLib.Recover(msg.sender, address(_token), _to, _amount, block.timestamp);
    }

    /// @inheritdoc IStakingModule
    function recoverNative(address payable _to, uint256 _amount) external onlyOwner {
        require(_amount <= address(this).balance, ErrorsLib.INSUFFICIENT_BALANCE);

        _to.transfer(_amount);

        emit EventsLib.RecoverNative(msg.sender, _to, _amount, block.timestamp);
    }

    // -- INTERNAL FUNCTIONS -- //

    function _price() internal view returns (uint256) {
        return
            (lastPrice * compoundValue(PRICE_DECIMAL_PRECISION, _dayCount(lastUpdated), rate)) /
            PRICE_DECIMAL_PRECISION;
    }

    function _previewDeposit(uint256 _usbdAmount) internal view returns (uint256 _susbdAmount) {
        _susbdAmount = (_usbdAmount * PRICE_DECIMAL_PRECISION) / _price();
    }

    function _previewRedeem(uint256 _susbdAmount) internal view returns (uint256 _usbdAmount) {
        _usbdAmount = (_susbdAmount * _price()) / PRICE_DECIMAL_PRECISION;
    }

    /// @notice Calculates the number of days passed since a given timestamp
    /// @param startTimestamp The starting timestamp to calculate days from
    /// @return The number of complete days passed since startTimestamp
    function _dayCount(uint256 startTimestamp) internal view returns (uint256) {
        if (startTimestamp > block.timestamp) return 0;

        return (block.timestamp - startTimestamp) / 1 days;
    }
}
