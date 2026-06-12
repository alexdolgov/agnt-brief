pragma solidity ^0.8.20;

import {ILimitOrderEngine as ILimitOrderEngineBase} from "limit-orders/src/interfaces/ILimitOrderEngine.sol";
import {ILimitOrderEngine} from "src/interfaces/ILimitOrderEngine.sol";
import {LibLimitOrderModule} from "src/router/modules/libraries/LibLimitOrderModule.sol";
import {ILimitOrderModule} from "src/router/modules/interfaces/ILimitOrderModule.sol";
import {SafeERC20, IERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import {AccessManagedUpgradeable} from "openzeppelin-contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import {IPrincipalToken} from "core-v2/src/interfaces/IPrincipalToken.sol";

contract LimitOrderModule is AccessManagedUpgradeable, ILimitOrderModule {
    using SafeERC20 for IERC20;

    function fillOrders(address receiver, ILimitOrderEngineBase.FillOrderParams[] memory params, bytes memory data)
        external
        payable
    {
        if (LibLimitOrderModule.getLimitOrderEngine() == address(0x0)) {
            revert LimitOrderEngineNotSet();
        }
        if (params.length == 0) revert NoOrders();

        IERC20 takerInputToken = IERC20(abi.decode(data, (address)));

        // ensure input token is compatible with order type of batch
        _validateTakerInputToken(takerInputToken, params);

        // transfer and trigger settlement logic
        takerInputToken.safeTransfer(
            LibLimitOrderModule.getLimitOrderEngine(), takerInputToken.balanceOf(address(this))
        );
        ILimitOrderEngine(LibLimitOrderModule.getLimitOrderEngine()).fillOrders(receiver, params, data);
    }

    /**
     * @notice Retrieves the current limit order engine address
     * @dev Returns the engine address stored in the limit order module storage
     * @return The address of the current limit order engine contract
     */
    function getLimitOrderEngine() external view returns (address) {
        return LibLimitOrderModule.getLimitOrderEngine();
    }

    /**
     * @notice Updates the limit order engine address used for order processing
     * @dev Only callable by authorized addresses (restricted modifier)
     *      Updates the engine address in the limit order module storage
     * @param _limitOrderEngine The new limit order engine contract address
     * @custom:security Requires restricted access control
     */
    function setLimitOrderEngine(address _limitOrderEngine) external restricted {
        LibLimitOrderModule.setLimitOrderEngine(_limitOrderEngine);
    }

    /**
     * @notice Validates that the taker input token is compatible with the order type of the batch.
     * @dev For each order type, two tokens are valid:
     *      - the direct taking token (standard fill)
     *      - the cross-market input token (fill via protocol deposit/withdraw)
     * @param _takerInputToken The token the taker wants to spend
     * @param params The batch of orders to fill
     */
    function _validateTakerInputToken(IERC20 _takerInputToken, ILimitOrderEngineBase.FillOrderParams[] memory params)
        internal
        view
    {
        ILimitOrderEngineBase.OrderType batchOrderType = params[0].order.orderType;
        IPrincipalToken pt = IPrincipalToken(params[0].order.pt);
        address ptAddress = params[0].order.pt;

        bool valid;
        if (batchOrderType == ILimitOrderEngineBase.OrderType.IBT_FOR_PT) {
            // direct: taker sends PT | cross-market: taker sends IBT
            valid = address(_takerInputToken) == ptAddress || address(_takerInputToken) == pt.getIBT();
        } else if (batchOrderType == ILimitOrderEngineBase.OrderType.PT_FOR_IBT) {
            // direct: taker sends IBT | cross-market: taker sends YT
            valid = address(_takerInputToken) == pt.getIBT() || address(_takerInputToken) == pt.getYT();
        } else if (batchOrderType == ILimitOrderEngineBase.OrderType.IBT_FOR_YT) {
            // direct: taker sends YT | cross-market: taker sends IBT
            valid = address(_takerInputToken) == pt.getYT() || address(_takerInputToken) == pt.getIBT();
        } else if (batchOrderType == ILimitOrderEngineBase.OrderType.YT_FOR_IBT) {
            // direct: taker sends IBT | cross-market: taker sends PT
            valid = address(_takerInputToken) == pt.getIBT() || address(_takerInputToken) == ptAddress;
        }

        if (!valid) revert InvalidTakerInputToken();
    }
}
