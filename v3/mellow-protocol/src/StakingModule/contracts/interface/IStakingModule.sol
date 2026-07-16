// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import { StakedUsbd } from "../StakedUsbd.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SendParam } from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import { MessagingFee } from "@layerzerolabs/oft-evm/contracts/OFTCore.sol";
import { StakedUsbdOftAdapter } from "../StakedUsbdOftAdapter.sol";

interface IStakingModule {
    /// @notice USBD token
    function usbd() external view returns (IERC20 usbd);

    /// @notice sUSBD token
    function susbd() external view returns (StakedUsbd susbd);

    /// @notice LayerZero OFT Adapter for sUSBD token
    function susbdOftAdapter() external view returns (StakedUsbdOftAdapter susbdOftAdapter);

    /// @notice sUSBD daily rate
    function rate() external view returns (uint256 rate);

    /// @notice The timestamp when the rate was last updated
    function lastUpdated() external view returns (uint256 lastUpdated);

    /// @notice The price of the sUSBD when the rate was last updated
    function lastPrice() external view returns (uint256 lastPrice);

    /// @notice Deposit USBD token and receive sUSBD tokens in return
    /// @param _amount The amount of USBD token to deposit
    /// @param _receiver The address that will receive sUSBD tokenns
    /// @return _susbdAmount The amount od sUSBD minted and sent to the receiver
    function deposit(uint256 _amount, address _receiver) external returns (uint256 _susbdAmount);

    /// @notice Deposit USBD tokens and receive sUSBD tokens on the other chain with LayerZero
    /// @dev The amountLD number in `sendParams` argument is sUSBD amount,
    /// @dev To avoid the Slippage error within the LayerZero, make sure the last 12 decimals of the amountLD is 0
    /// @dev You should manually calculate the USBD amount for the deposit with `previewRedeem` function,
    /// @dev and approve that amount to the `StakingModule` contract
    /// @param sendParam Parameters struct for the LayerZero messaging: https://github.com/LayerZero-Labs/LayerZero-v2/blob/7da76840e41dc593d3c2007ce35b911b1d816b4b/packages/layerzero-v2/evm/oapp/contracts/oft/interfaces/IOFT.sol#L10
    /// @param messagingFee Fees struct for the LayerZero messaging: https://github.com/LayerZero-Labs/LayerZero-v2/blob/7da76840e41dc593d3c2007ce35b911b1d816b4b/packages/layerzero-v2/evm/protocol/contracts/interfaces/ILayerZeroEndpointV2.sol#L24
    /// @return _susbdAmount  Amount of sUSBD tokens to be sent cross-chain
    /// @return _usbdAmount Amount of USBD tokens deposited
    function deposit(
        SendParam calldata sendParam,
        MessagingFee calldata messagingFee
    ) external payable returns (uint256 _susbdAmount, uint256 _usbdAmount);

    /// @notice Burns sUSBD tokens and requests redemption for USBD/Blue chip assets
    /// @dev The events emitted from this function will be tracked by the Bima team
    /// @dev and the correlated asset amounts value will be sent to the _receiver address
    /// @param _susbdAmount Amount of sUSBD to burn
    /// @param _receiver Address that will receive USBD token + yield.
    /// @return _usdAmount USD value of the assets to be received
    function requestRedeem(uint256 _susbdAmount, address _receiver) external returns (uint256 _usdAmount);

    /// @notice Set a new daily rate for sUSBD.
    /// @dev Only owner.
    /// @param _newRate The new staking rate to be set
    function setRate(uint256 _newRate) external;

    /// @notice Sets the address of the sUSBD OFT adapter
    /// @dev Only owner.
    /// @param _susbdOftAdapter The address of the StakedUsbdOftAdapter
    function setSusbdOftAdapter(address _susbdOftAdapter) external;

    /// @notice Returns the current price of USBD
    function price() external view returns (uint256 price);

    /// @notice Preview the amount of sUSBD tokens that will be received for a given amount of USBD tokens deposited.
    /// @param _usbdAmount The amount of USBD tokens to deposit.
    /// @return _susbdAmount The estimated amount of sUSBD tokens that will be minted.
    function previewDeposit(uint256 _usbdAmount) external view returns (uint256 _susbdAmount);

    /// @notice Preview the amount of USBD tokens that can be received for a given amount of sUSBD tokens.
    /// @param _susbdAmount The amount of sUSBD tokens to burn.
    /// @return _usbdAmount The estimated amount of USBD tokens that will be received upon redemption.
    function previewRedeem(uint256 _susbdAmount) external view returns (uint256 _usbdAmount);

    /// @notice Recover all tokens of a specified ERC20 token from this contract.
    /// @dev Only owner.
    /// @param _token The address of the ERC20 token to recover.
    /// @param _to The address that will receive the recovered tokens.
    function recover(IERC20 _token, address _to) external;

    /// @notice Recover a specified amount of ERC20 tokens
    /// @dev Only owner.
    /// @param _token The address of the ERC20 token to recover
    /// @param _to The address that will receive the recovered tokens
    /// @param _amount The amount of tokens to recover
    function recover(IERC20 _token, address _to, uint256 _amount) external;

    /// @notice Recover a specified amount of native currency
    /// @dev Only owner.
    /// @param _to The address that will receive the recovered native currency
    /// @param _amount The amount of native currency to recover
    function recoverNative(address payable _to, uint256 _amount) external;
}
