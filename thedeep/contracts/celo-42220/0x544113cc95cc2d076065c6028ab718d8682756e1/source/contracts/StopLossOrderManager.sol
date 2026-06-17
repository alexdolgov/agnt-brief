// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.7.6;
pragma abicoder v2;

import { IStopLossOrderManager } from "../interfaces/IStopLossOrderManager.sol";
import { IICHIVault } from "../interfaces/IICHIVault.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeMath } from "@openzeppelin/contracts/math/SafeMath.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import { UV3Math } from "./lib/UV3Math.sol";
import { IUniswapV3Pool } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";

/**
 @notice Stop Loss Order Manager contract. Allows users to set up and execute stop loss orders for ICHI vault positions.
 */
contract StopLossOrderManager is ReentrancyGuard, Ownable, IStopLossOrderManager {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    /**
     @notice order count (incremented to produce new order position IDs)
     */
    uint256 public override orderCount;

    /**
     @dev stop loss order book
     */
    mapping(uint256 => Order) private orderBook;

    /**
     @dev user's stop loss orders
     */
    mapping(address => uint256[]) private userOrders;

    /**
     @notice whitelisted vaults
     */
    mapping(address => bool) public override whitelistedVaults;

    address constant NULL_ADDRESS = address(0);
    uint256 public constant PRECISION = 10 ** 18;

    /**
     @notice creates an instance of StopLossOrderManager
     */
    constructor() {
        orderCount = 0;
    }

    /**
     @notice returns order with specified id
     @param _id order id
     @param order the order
     */
    function getOrderById(uint256 _id) public view override returns (Order memory order) {
        return orderBook[_id];
    }

    /**
     @notice returns array of user orders
     @param _user user's address
     @param ids array of order IDs
     */
    function getUserOrderIds(address _user) external view override returns (uint256[] memory ids) {
        return userOrders[_user];
    }

    /**
     @notice whitelists the vault. Allows creation of new positions
     @param _vault the vault
     */
    function enableVault(address _vault) external override onlyOwner {
        bool allow0 = IICHIVault(_vault).allowToken0();
        bool allow1 = IICHIVault(_vault).allowToken1();
        require((allow0 && !allow1) || (allow1 && !allow0), "SLOM.enableVault: misconfigured vault");
        whitelistedVaults[_vault] = true;
        emit VaultEnabled(msg.sender, _vault);
    }

    /**
     @notice removes vault from the whitelist. No additional positions could be created
     @param _vault the vault
     */
    function disableVault(address _vault) external override onlyOwner {
        whitelistedVaults[_vault] = false;
        emit VaultDisabled(msg.sender, _vault);
    }

    /**
     @notice calculates the value of the position denominated in the base token.
     @param vault the vault
     @param amount number of vault LPs in the position
     */
    function currentValue(address vault, uint256 amount) public view override returns (uint256 value) {
        // vault is inverted when base token is token1
        bool isInverted = IICHIVault(vault).allowToken1();

        address pool = IICHIVault(vault).pool();
        address token0 = IUniswapV3Pool(pool).token0();
        address token1 = IUniswapV3Pool(pool).token1();

        (uint256 total0, uint256 total1) = IICHIVault(vault).getTotalAmounts();
        uint256 totalSupply = IERC20(vault).totalSupply();
        require(totalSupply > 0, "SLOM.currentValue: empty vault");

        // share of user's LPs in the vault
        uint256 lpShare = amount.mul(PRECISION).div(totalSupply);

        // get spot price denominated in the base token
        uint256 price = _fetchSpot(
            isInverted ? token0 : token1,
            isInverted ? token1 : token0,
            currentTick(pool),
            PRECISION
        );

        // both price and lpShare are 18 decimals
        value = isInverted
            ? total1.add(total0.mul(price).div(PRECISION)).mul(lpShare).div(PRECISION)
            : total0.add(total1.mul(price).div(PRECISION)).mul(lpShare).div(PRECISION);
    }

    /**
     @notice Returns current price tick
     @param pool Uniswap pool's address
     @param tick Uniswap pool's current price tick
     */
    function currentTick(address pool) public view override returns (int24 tick) {
        (, int24 tick_, , , , , bool unlocked_) = IUniswapV3Pool(pool).slot0();
        require(unlocked_, "SLOM.currentTick: the pool is locked");
        tick = tick_;
    }

    /**
     @notice creates Stop Loss Order position.
     @param _vault the vault
     @param _amount amount of vault LPs to be included into the order
     @param _threshold min value of the position before it could be closed
     @param position ID of the created position
     */
    function createStopLossOrder(
        address _vault,
        uint256 _amount,
        uint256 _threshold
    ) external override nonReentrant returns (uint256 position) {
        require(_vault != NULL_ADDRESS, "SLOM.createStopLossOrder: null address");
        require(whitelistedVaults[_vault], "SLOM.createStopLossOrder: vault is disabled");
        require(_amount > 0, "SLOM.createStopLossOrder: zero amount");
        require(_threshold > 0, "SLOM.createStopLossOrder: invalid threshold");

        // create new order and store it
        Order memory order = Order(msg.sender, _vault, _amount, _threshold);
        orderBook[orderCount] = order;
        userOrders[msg.sender].push(orderCount);
        position = orderCount;

        emit CreateOrder(msg.sender, _vault, _amount, _threshold, orderCount);

        orderCount++;

        // transfer LPs to SLOM
        IERC20(_vault).transferFrom(msg.sender, address(this), _amount);
    }

    /**
     @notice tries to execute the Stop Loss Order position.
     @param _position ID of the position
     */
    function executeStopLossOrder(uint256 _position) external override nonReentrant {
        require(_position < orderCount, "SLOM.executeStopLossOrder: position out of range");
        Order memory order = orderBook[_position];
        require(order.amount > 0, "SLOM.executeStopLossOrder: position was closed");

        // get the current value of the position
        uint256 value = currentValue(order.vault, order.amount);
        require(value < order.threshold, "SLOM.executeStopLossOrder: threshold not reached");

        uint256 originalAmount = order.amount;
        orderBook[_position].amount = 0;

        emit ExecuteOrder(msg.sender, order.vault, originalAmount, _position);

        // withdraw from the vault
        IICHIVault(order.vault).withdraw(originalAmount, order.sender);
    }

    /**
     @notice closes the Stop Loss Order position without withdrawing from the vault.
     @param _position ID of the position
     */
    function closeStopLossOrder(uint256 _position) external override nonReentrant {
        require(_position < orderCount, "SLOM.closeStopLossOrder: position out of range");
        Order memory order = orderBook[_position];
        require(order.sender == msg.sender, "SLOM.closeStopLossOrder: not an owner");
        require(order.amount > 0, "SLOM.closeStopLossOrder: position was closed");

        uint256 originalAmount = order.amount;
        orderBook[_position].amount = 0;

        emit CloseOrder(msg.sender, order.vault, originalAmount, _position);

        // transfer LPs to the user
        IERC20(order.vault).transfer(msg.sender, originalAmount);
    }

    /**
     @notice returns equivalent _tokenOut for _amountIn, _tokenIn using spot price
     @param _tokenIn token the input amount is in
     @param _tokenOut token for the output amount
     @param _tick tick for the spot price
     @param _amountIn amount in _tokenIn
     @param amountOut equivalent anount in _tokenOut
     */
    function _fetchSpot(
        address _tokenIn,
        address _tokenOut,
        int24 _tick,
        uint256 _amountIn
    ) internal pure returns (uint256 amountOut) {
        return UV3Math.getQuoteAtTick(_tick, UV3Math.toUint128(_amountIn), _tokenIn, _tokenOut);
    }
}
