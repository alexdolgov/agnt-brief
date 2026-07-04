// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "./interfaces/IYakRouter.sol";
import "./interfaces/ILimitOrder.sol";

/**
 * @title LimitOrder
 * @dev A contract for creating and executing limit orders.
 */
contract LimitOrder is ILimitOrder, AccessControl, ReentrancyGuard, Pausable {
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableSet for EnumerableSet.UintSet;
    using SafeERC20 for IERC20;

    // Interface for the YakRouter contract used to execute orders
    IYakRouter public yakRouter;
    // Set of trusted tokens that can be used in orders
    EnumerableSet.AddressSet private _trustedTokens;

    EnumerableSet.UintSet private _active0rderIndexes;
    EnumerableSet.UintSet private _executed0rderIndexes;
    EnumerableSet.UintSet private _cancelled0rderIndexes;

    mapping(uint256 => Order) public orders;
    mapping(address => EnumerableSet.UintSet) private _user0rderIndexesActive;
    mapping(address => EnumerableSet.UintSet) private _user0rderIndexesExecuted;
    mapping(address => EnumerableSet.UintSet)
        private _user0rderIndexesCancelled;

    // Maximum number of hops allowed to execute an order
    uint256 public maxHops = 5;
    // Fee charged for executing an order
    uint256 public fee = 0;
    // Maximum duration an order can be active
    uint256 public maxDuration = 30 days;

    uint256 public orderIndex;

    // Constructor to initialize the YakRouter contract address
    constructor(address _yakRouter) {
        yakRouter = IYakRouter(_yakRouter);
    }

    /**
     * @dev Create a new order to buy a token with another token.
     * @param buyToken The token to be bought.
     * @param sellToken The token to be sold.
     * @param buyAmount The amount of the buy token.
     * @param sellAmount The amount of the sell token.
     * @param expiry The expiry time of the order.
     */
    function createOrder(
        address buyToken,
        address sellToken,
        uint256 buyAmount,
        uint256 sellAmount,
        uint256 expiry
    ) public nonReentrant whenNotPaused returns(uint256) {
        if (expiry > block.timestamp + maxDuration) {
            revert Expired(expiry, block.timestamp);
        }

        if(buyAmount == 0) {
            revert InvalidAmount(buyAmount);
        }

        if(sellAmount == 0) {
            revert InvalidAmount(sellAmount);
        }

        if (buyToken == sellToken) {
            revert InvalidTokens();
        }
        // Create a new order
        Order memory order = Order({
            maker: msg.sender,
            buyToken: buyToken,
            sellToken: sellToken,
            buyAmount: buyAmount,
            sellAmount: sellAmount,
            expiry: expiry,
            status: Status.ACTIVE
        });

        orderIndex++;
        _active0rderIndexes.add(orderIndex);
        _user0rderIndexesActive[msg.sender].add(orderIndex);
        orders[orderIndex] = order;

        // Transfer the sellToken from the user to this contract
        IERC20(sellToken).safeTransferFrom(
            msg.sender,
            address(this),
            sellAmount
        );

        emit OrderCreated(
            msg.sender,
            buyToken,
            sellToken,
            buyAmount,
            sellAmount,
            expiry
        );

        return orderIndex;
    }

    /**
     * @dev Cancel an existing order.
     * @param index The index of the order to be cancelled.
     */
    function cancelOrder(uint256 index) external nonReentrant {
        if (!_active0rderIndexes.contains(index)) {
            revert IndexDoesNotExist(index);
        }

        Order memory order = orders[index];
        if (order.maker != msg.sender) {
            revert OnlyMaker();
        }

        _active0rderIndexes.remove(index);
        _user0rderIndexesActive[msg.sender].remove(index);
        _cancelled0rderIndexes.add(index);
        _user0rderIndexesCancelled[msg.sender].add(index);
        orders[index].status = Status.CANCELLED;

        IERC20(order.sellToken).safeTransfer(msg.sender, order.sellAmount);

        emit OrderCancelled(
            msg.sender,
            order.buyToken,
            order.sellToken,
            order.buyAmount,
            order.sellAmount
        );
    }

    /**
     * @dev Check if an order can be executed.
     * @param index The index of the order to be checked.
     * @return (bool, IYakRouter.FormattedOffer memory, bytes memory)
     * - A boolean indicating if the order is executable.
     * - The offer details from the YakRouter.
     * - The execution data for the order.
     */
    function checkOrderExecutable(
        uint256 index
    ) public view returns (bool, IYakRouter.FormattedOffer memory) {
        if (!_active0rderIndexes.contains(index)) {
            revert IndexDoesNotExist(index);
        }

        Order memory order = orders[index];

        IYakRouter.FormattedOffer memory offer;
        if (block.timestamp > order.expiry) {
            return (false, offer);
        }

        // Prepare the list of trusted tokens including the buy and sell tokens
        uint256 length = _trustedTokens.length();
        address[] memory trustedTokens = new address[](length + 2);

        for (uint256 i = 0; i < length; i++) {
            trustedTokens[i] = _trustedTokens.at(i);
        }
        trustedTokens[length] = order.buyToken;
        trustedTokens[length + 1] = order.sellToken;

        // Find the best path for the trade using YakRouter
        offer = yakRouter.findBestPath(
            order.sellAmount,
            order.sellToken,
            order.buyToken,
            trustedTokens,
            maxHops
        );

        if (offer.amounts[0] != order.sellAmount) {
            revert AmountsMismatch(offer.amounts[0], order.sellAmount);
        }

        return (
            offer.amounts[offer.amounts.length - 1] >= order.buyAmount,
            offer
        );
    }

    /**
     * @dev Execute an order if it is executable.
     * @param index The index of the order to be executed.
     */
    function executeOrder(uint256 index) external nonReentrant whenNotPaused {
        if (!_active0rderIndexes.contains(index)) {
            revert IndexDoesNotExist(index);
        }

        Order memory order = orders[index];

        (
            bool executable,
            IYakRouter.FormattedOffer memory offer
        ) = checkOrderExecutable(index);

        if (!executable) {
            revert NotExecutable();
        }

        IERC20(order.sellToken).approve(address(yakRouter), order.sellAmount);

        // Prepare the trade details
        IYakRouter.Trade memory trade = IYakRouter.Trade({
            amountIn: order.sellAmount,
            amountOut: order.buyAmount,
            path: offer.path,
            adapters: offer.adapters,
            recipients: offer.recipients
        });

        // Remove the order from the activeOrders mapping
        _active0rderIndexes.remove(index);
        _user0rderIndexesActive[order.maker].remove(index);
        _executed0rderIndexes.add(index);
        _user0rderIndexesExecuted[order.maker].add(index);
        orders[index].status = Status.EXECUTED;

        // Execute the trade using YakRouter
        yakRouter.swapNoSplit(trade, fee, order.maker);

        emit OrderExecuted(
            order.maker,
            order.buyToken,
            order.sellToken,
            order.buyAmount,
            order.sellAmount
        );
    }

    /**
     * @dev Get the list of trusted tokens.
     * @return address[] The list of trusted tokens.
     */
    function getTrustedTokens() external view returns (address[] memory) {
        return _trustedTokens.values();
    }

    /**
     * @dev Add a token to the list of trusted tokens.
     * @param token The address of the token to be added.
     */
    function addTrustedToken(
        address token
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _trustedTokens.add(token);
        emit SetTrustedToken(token, true);
    }

    /**
     * @dev Remove a token from the list of trusted tokens.
     * @param token The address of the token to be removed.
     */
    function removeTrustedToken(
        address token
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _trustedTokens.remove(token);
        emit RemoveTrustedToken(token);
    }

    /**
     * @dev Set the maximum number of hops allowed to execute an order.
     * @param _maxHops The new maximum number of hops.
     */
    function setMaxHops(
        uint256 _maxHops
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 oldMaxHops = maxHops;
        maxHops = _maxHops;
        emit SetMaxHops(oldMaxHops, _maxHops);
    }

    /**
     * @dev Set the fee for executing an order.
     * @param _fee The new fee amount.
     */
    function setFee(uint256 _fee) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 oldFee = fee;
        fee = _fee;
        emit SetFee(oldFee, _fee);
    }

    /**
     * @dev Set the maximum duration an order can be active.
     * @param _maxDuration The new maximum duration.
     */
    function setMaxDuration(
        uint256 _maxDuration
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 oldMaxDuration = maxDuration;
        maxDuration = _maxDuration;
        emit SetMaxDuration(oldMaxDuration, _maxDuration);
    }

    /**
     * @dev Set the YakRouter contract address.
     * @param _yakRouter The address of the YakRouter contract.
     */
    function setYakRouter(
        address _yakRouter
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        address oldYakRouter = address(yakRouter);
        yakRouter = IYakRouter(_yakRouter);

        emit SetYakRouter(oldYakRouter, _yakRouter);
    }

    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    /**
     * @dev Function to recover ERC20 tokens from the contract.
     * @param tokenAddress The address of the ERC20 token to recover.
     * @param tokenAmount The amount of tokens to recover.
     */
    function recoverERC20(
        address tokenAddress,
        uint256 tokenAmount
    )
        external
        onlyRole(DEFAULT_ADMIN_ROLE) // Only the admin can call this function
    {
        IERC20(tokenAddress).safeTransfer(msg.sender, tokenAmount); // Transfer tokens to the admin
    }

    /**
     * @dev Function to get the indexes of active orders.
     * @return An array of active order indexes.
     */
    function getActiveOrderIndexes() external view returns (uint256[] memory) {
        return _active0rderIndexes.values(); // Return active order indexes
    }

    /**
     * @dev Function to get the indexes of executed orders.
     * @return An array of executed order indexes.
     */
    function getExecutedOrderIndexes()
        external
        view
        returns (uint256[] memory)
    {
        return _executed0rderIndexes.values(); // Return executed order indexes
    }

    /**
     * @dev Function to get the indexes of cancelled orders.
     * @return An array of cancelled order indexes.
     */
    function getCancelledOrderIndexes()
        external
        view
        returns (uint256[] memory)
    {
        return _cancelled0rderIndexes.values(); // Return cancelled order indexes
    }

    /**
     * @dev Function to get the active order indexes for a specific user.
     * @param user The address of the user.
     * @return An array of active order indexes for the user.
     */
    function getActiveOrderIndexesForUser(
        address user
    ) external view returns (uint256[] memory) {
        return _user0rderIndexesActive[user].values(); // Return active order indexes for the user
    }

    /**
     * @dev Function to get the executed order indexes for a specific user.
     * @param user The address of the user.
     * @return An array of executed order indexes for the user.
     */
    function getExecutedOrderIndexesForUser(
        address user
    ) external view returns (uint256[] memory) {
        return _user0rderIndexesExecuted[user].values(); // Return executed order indexes for the user
    }

    /**
     * @dev Function to get the cancelled order indexes for a specific user.
     * @param user The address of the user.
     * @return An array of cancelled order indexes for the user.
     */
    function getCancelledOrderIndexesForUser(
        address user
    ) external view returns (uint256[] memory) {
        return _user0rderIndexesCancelled[user].values(); // Return cancelled order indexes for the user
    }

    /**
     * @dev Function to get a specific order by its index.
     * @param index The index of the order to retrieve.
     * @return The order at the specified index.
     */
    function getOrder(uint256 index) external view returns (Order memory) {
        return orders[index]; // Return the order at the specified index
    }

    /**
     * @dev Function to get multiple orders based on an array of indexes.
     * @param indexes An array of order indexes to retrieve.
     * @return An array of orders corresponding to the provided indexes.
     */
    function getOrders(
        uint256[] memory indexes
    ) public view returns (Order[] memory) {
        Order[] memory _orders = new Order[](indexes.length); // Create an array to hold the orders
        for (uint256 i = 0; i < indexes.length; i++) {
            _orders[i] = orders[indexes[i]]; // Retrieve each order by index
        }
        return _orders; // Return the array of orders
    }

    /**
     * @dev Function to get all active orders.
     * @return An array of all active orders.
     */
    function getActiveOrderOrders() external view returns (Order[] memory) {
        return getOrders(_active0rderIndexes.values()); // Fetch orders using active order indexes
    }

    /**
     * @dev Function to get all executed orders.
     * @return An array of all executed orders.
     */
    function getExecutedOrderOrders() external view returns (Order[] memory) {
        return getOrders(_executed0rderIndexes.values()); // Fetch orders using executed order indexes
    }

    /**
     * @dev Function to get all cancelled orders.
     * @return An array of all cancelled orders.
     */
    function getCancelledOrderOrders() external view returns (Order[] memory) {
        return getOrders(_cancelled0rderIndexes.values()); // Fetch orders using cancelled order indexes
    }

    /**
     * @dev Function to get active orders for a specific user.
     * @param user The address of the user.
     * @return An array of active orders for the user.
     */
    function getActiveOrderOrdersForUser(
        address user
    ) external view returns (Order[] memory) {
        return getOrders(_user0rderIndexesActive[user].values()); // Fetch user's active orders
    }

    /**
     * @dev Function to get executed orders for a specific user.
     * @param user The address of the user.
     * @return An array of executed orders for the user.
     */
    function getExecutedOrderOrdersForUser(
        address user
    ) external view returns (Order[] memory) {
        return getOrders(_user0rderIndexesExecuted[user].values()); // Fetch user's executed orders
    }

    /**
     * @dev Function to get cancelled orders for a specific user.
     * @param user The address of the user.
     * @return An array of cancelled orders for the user.
     */
    function getCancelledOrderOrdersForUser(
        address user
    ) external view returns (Order[] memory) {
        return getOrders(_user0rderIndexesCancelled[user].values()); // Fetch user's cancelled orders
    }

    /**
     * @dev Function to get a batch of active orders based on an array of indexes.
     * @param indexes An array of order indexes to retrieve.
     * @return An array of active orders corresponding to the provided indexes.
     */
    function getActiveOrdersBatch(
        uint256[] memory indexes
    ) external view returns (Order[] memory) {
        Order[] memory _orders = new Order[](indexes.length); // Create an array to hold the orders
        for (uint256 i = 0; i < indexes.length; i++) {
            _orders[i] = orders[indexes[i]]; // Retrieve each order by index
        }
        return _orders; // Return the batch of active orders
    }

    /**
     * @dev Function to get a batch of executed orders based on an array of indexes.
     * @param indexes An array of order indexes to retrieve.
     * @return An array of executed orders corresponding to the provided indexes.
     */
    function getExecutedOrdersBatch(
        uint256[] memory indexes
    ) external view returns (Order[] memory) {
        Order[] memory _orders = new Order[](indexes.length); // Create an array to hold the orders
        for (uint256 i = 0; i < indexes.length; i++) {
            _orders[i] = orders[indexes[i]]; // Retrieve each order by index
        }
        return _orders; // Return the batch of executed orders
    }

    /**
     * @dev Function to get a batch of cancelled orders based on an array of indexes.
     * @param indexes An array of order indexes to retrieve.
     * @return An array of cancelled orders corresponding to the provided indexes.
     */
    function getCancelledOrdersBatch(
        uint256[] memory indexes
    ) external view returns (Order[] memory) {
        Order[] memory _orders = new Order[](indexes.length); // Create an array to hold the orders
        for (uint256 i = 0; i < indexes.length; i++) {
            _orders[i] = orders[indexes[i]]; // Retrieve each order by index
        }
        return _orders; // Return the batch of cancelled orders
    }

    /**
     * @dev Function to get active orders within a specified range.
     * @param _start The starting index of the range.
     * @param _end The ending index of the range.
     * @return An array of active orders within the specified range.
     */
    function getActiveOrdersInRange(
        uint256 _start,
        uint256 _end
    ) external view returns (Order[] memory ) {
        Order[] memory listOrders_ = new Order[](_end - _start); // Initialize the list of orders for the specified range
        for (uint256 i = _start; i < _end; i++) {
            uint256 index = _active0rderIndexes.at(i); // Get the index of the active order
            listOrders_[i - _start] = orders[index]; // Populate the order in the list
        }
        return listOrders_; // Return the list of active orders
    }

    /**
     * @dev Function to get executed orders within a specified range.
     * @param _start The starting index of the range.
     * @param _end The ending index of the range.
     * @return An array of executed orders within the specified range.
     */
    function getExecutedOrdersInRange(
        uint256 _start,
        uint256 _end
    ) external view returns (Order[] memory ) {
        Order[] memory listOrders_ = new Order[](_end - _start); // Initialize the list of orders for the specified range
        for (uint256 i = _start; i < _end; i++) {
            uint256 index = _executed0rderIndexes.at(i); // Get the index of the executed order
            listOrders_[i - _start] = orders[index]; // Populate the order in the list
        }
        return listOrders_; // Return the list of executed orders
    }

    /**
     * @dev Function to get cancelled orders within a specified range.
     * @param _start The starting index of the range.
     * @param _end The ending index of the range.
     * @return An array of cancelled orders within the specified range.
     */
    function getCancelledOrdersInRange(
        uint256 _start,
        uint256 _end
    ) external view returns (Order[] memory) {
        Order[] memory listOrders_ = new Order[](_end - _start); // Initialize the list of orders for the specified range
        for (uint256 i = _start; i < _end; i++) {
            uint256 index = _cancelled0rderIndexes.at(i); // Get the index of the cancelled order
            listOrders_[i - _start] = orders[index]; // Populate the order in the list
        }
        return listOrders_; // Return the list of cancelled orders
    }
}
