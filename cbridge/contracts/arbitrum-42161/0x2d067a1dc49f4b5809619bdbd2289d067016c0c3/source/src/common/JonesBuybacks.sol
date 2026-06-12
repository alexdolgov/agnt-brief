// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import {SafeTransferLib, ERC20} from "solmate/utils/SafeTransferLib.sol";
import {UpgradeableOperable} from "src/common/UpgradeableOperable.sol";

/**
 * @title JonesBuybacks
 * @author JonesDAO
 * @notice This contract should be used to perform buybacks of $JONES, using OpenOcean. Important
 *         to mention that it should never ever hold any token, only receive and send back to multisig
 */
contract JonesBuybacks is UpgradeableOperable {
    using SafeTransferLib for ERC20;

    /// @notice OpenOcean Swapper Router
    address public constant OPEN_OCEAN_ROUTER = 0x6352a56caadC4F1E25CD6c75970Fa768A3304e64;

    address public constant JONES = 0x10393c20975cF177a3513071bC110f7962CD67da;

    /// @notice Who will be receiving JONES
    address public multisig;

    event Buyback(address indexed tokenIn, address tokenOut, uint256 amountIn, uint256 amountOut, uint256 timestamp);

    function init(address _multisig) external initializer {
        __Governable_init(msg.sender);

        require(_multisig != address(0), "multisig cannot be 0");

        multisig = _multisig;
    }

    struct OpenOceanParams {
        // Token that will be swapped
        address tokenIn;
        // Amount that will be swapped
        uint256 amountIn;
        // Token to be received after the swap
        address tokenOut;
        bytes externalData;
        uint256 minAmountOut;
    }

    /// @notice Performs OpenOcean swap and makes sure we receive at least minAmountOut
    function swap(OpenOceanParams calldata _swapParams) external onlyOperator returns (uint256 amountOut) {
        // Multisig max approved tokenIn to this contract
        ERC20(_swapParams.tokenIn).safeTransferFrom(multisig, address(this), _swapParams.amountIn);

        ERC20(_swapParams.tokenIn).approve(OPEN_OCEAN_ROUTER, _swapParams.amountIn);

        // Snapshot balance before to later make sure our balance has increased at least minimum amount
        uint256 snapshotBalanceBefore = ERC20(_swapParams.tokenOut).balanceOf(address(this));

        // This performs the $JONES buy itself, using the data from the input struct
        (bool ok, bytes memory received) = OPEN_OCEAN_ROUTER.call(_swapParams.externalData);

        // Make sure swap happened okay and we bought $JONES
        require(ok, "0x swap failed");
        require(_swapParams.tokenOut == JONES, "$JONES only");

        // Returns how much was received
        amountOut = abi.decode(received, (uint256));

        // Gets real amount out snapshotting balance
        uint256 snapshotBalanceAfter = ERC20(_swapParams.tokenOut).balanceOf(address(this));

        // Ensure amount received >= minAmountOut set in the input args
        require(snapshotBalanceAfter >= snapshotBalanceBefore + _swapParams.minAmountOut, "didnt receive enough");

        // Sends received tokens to multisig back, avoiding any dust
        ERC20(_swapParams.tokenOut).safeTransfer(multisig, amountOut);

        emit Buyback(_swapParams.tokenIn, _swapParams.tokenOut, _swapParams.amountIn, amountOut, block.timestamp);
    }

    function rescue(address _token, uint256 _amount) external onlyGovernor {
        ERC20(_token).safeTransfer(msg.sender, _amount);
    }
}
