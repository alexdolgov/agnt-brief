// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC3156FlashLender} from "@openzeppelin/contracts/interfaces/IERC3156FlashLender.sol";
import {IERC3156FlashBorrower} from "@openzeppelin/contracts/interfaces/IERC3156FlashBorrower.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ERC3156Lib} from "src/libraries/ERC3156Lib.sol";
import {IMorpho, IMorphoFlashLoanCallback} from "src/interfaces/external/IMorpho.sol";

/// @title The Morpho flash-loan implementation
/// @dev This contract is called by the `FlashLoanExecutor`
contract MorphoFlashLoan is IERC3156FlashLender, IMorphoFlashLoanCallback {
    using SafeERC20 for IERC20;

    IMorpho public immutable MORPHO;

    error InvalidSender();
    error AddressIsNull();
    error CallbackFailed();
    error TokenNotSupported();

    constructor(address morpho_) {
        if (morpho_ == address(0)) revert AddressIsNull();

        MORPHO = IMorpho(morpho_);
    }

    function maxFlashLoan(address token_) public view returns (uint256) {
        return IERC20(token_).balanceOf(address(MORPHO));
    }

    /// @inheritdoc IERC3156FlashLender
    function flashFee(address token_, uint256 /*amount_*/) external view returns (uint256) {
        if (maxFlashLoan(address(token_)) == 0) revert TokenNotSupported();

        return 0;
    }

    /// @inheritdoc IERC3156FlashLender
    function flashLoan(
        IERC3156FlashBorrower /*receiver_*/,
        address token_,
        uint256 amount_,
        bytes memory data_
    ) external returns (bool _success) {
        if (maxFlashLoan(address(token_)) < amount_) {
            return false;
        }

        bytes memory _data = abi.encode(token_, data_);

        MORPHO.flashLoan(token_, amount_, _data);

        return true;
    }

    /// @dev Morpho's flash loan callback function
    function onMorphoFlashLoan(uint256 amount_, bytes calldata data_) external {
        if (msg.sender != address(MORPHO)) revert InvalidSender();

        (IERC20 _token, bytes memory _data) = abi.decode(data_, (IERC20, bytes));

        if (
            IERC3156FlashBorrower(address(this)).onFlashLoan(address(this), address(_token), amount_, 0, _data) !=
            ERC3156Lib.CALLBACK_SUCCESS
        ) revert CallbackFailed();

        _token.forceApprove(address(MORPHO), 0);
        _token.forceApprove(address(MORPHO), amount_);
    }
}
