// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IMorpho} from "@morpho/src/interfaces/IMorpho.sol";
import {IMorphoFlashLoanCallback} from "@morpho/src/interfaces/IMorphoCallbacks.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {Errors} from "@size/src/market/libraries/Errors.sol";
import {PeripheryErrors} from "src/libraries/PeripheryErrors.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

abstract contract MorphoFlashLoanReceiverBaseUpgradeable is Initializable, IMorphoFlashLoanCallback {
    using SafeERC20 for IERC20;

    // STORAGE
    /// @custom:storage-location erc7201:size.storage.MorphoFlashLoanReceiverBase
    struct MorphoFlashLoanReceiverBaseStorage {
        IMorpho _morpho;
    }

    // keccak256(abi.encode(uint256(keccak256("size.storage.MorphoFlashLoanReceiverBase")) - 1)) & ~bytes32(uint256(0xff));
    /// forge-lint: disable-next-line(screaming-snake-case-const)
    bytes32 private constant MorphoFlashLoanReceiverBaseStorageLocation =
        0xe7f9a017cc53a312c77e5e8c1b4f0734320fe14b28476d1b964d8ea53abf4d00;

    function _getMorphoFlashLoanReceiverBaseStorage()
        private
        pure
        returns (MorphoFlashLoanReceiverBaseStorage storage $)
    {
        assembly {
            $.slot := MorphoFlashLoanReceiverBaseStorageLocation
        }
    }

    // INITIALIZER
    /// forge-lint: disable-next-line(mixed-case-function)
    function __MorphoFlashLoanReceiverBase_init(address _morpho) internal onlyInitializing {
        if (_morpho == address(0)) {
            revert Errors.NULL_ADDRESS();
        }
        MorphoFlashLoanReceiverBaseStorage storage $ = _getMorphoFlashLoanReceiverBaseStorage();
        $._morpho = IMorpho(_morpho);
    }

    // FUNCTIONS
    function onMorphoFlashLoan(uint256 assets, bytes calldata data) external virtual override {
        _validateFlashLoanCallbackCaller();
        (address token, bytes memory params) = abi.decode(data, (address, bytes));
        _flashLoanCallback(token, assets, params);
        _approveFlashLoanRepayment(token, assets);
    }

    function _validateFlashLoanCallbackCaller() private view {
        if (msg.sender != address(morpho())) {
            revert PeripheryErrors.NOT_MORPHO();
        }
    }

    function _approveFlashLoanRepayment(address token, uint256 amount) private {
        uint256 balance = IERC20(token).balanceOf(address(this));
        if (balance < amount) {
            revert PeripheryErrors.INSUFFICIENT_BALANCE(balance, amount);
        }
        IERC20(token).forceApprove(address(morpho()), amount);
    }

    function _flashLoanCallback(address token, uint256 amount, bytes memory params) internal virtual {}

    function _flashLoan(address token, uint256 amount, bytes memory params) internal {
        bytes memory externalParams = abi.encode(token, params);
        morpho().flashLoan(token, amount, externalParams);
    }

    // VIEW FUNCTIONS
    function morpho() public view returns (IMorpho) {
        return _getMorphoFlashLoanReceiverBaseStorage()._morpho;
    }
}
