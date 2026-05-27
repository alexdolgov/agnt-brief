// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.19;

import "./interfaces/IERC20.sol";
import "./interfaces/ICoordinator.sol";
import "./interfaces/IMockTokenUpgradeable.sol";
import "./interfaces/IGPv2Settlement.sol";
import "./libraries/GPv2Order.sol";
import "./interfaces/IConditionalOrder.sol";
import "./interfaces/IWrappedAgToken.sol";
import "./interfaces/IAgaveOracle.sol";

/// @notice User proxy contract for placing CowSwap orders on tokens that have _beforeTokenTransfer and _afterTokenTransfer functionality.
/// @author Pogo
contract Swapper_UserProxyImplementation is IConditionalOrder {

  using GPv2Order for GPv2Order.Data;
  using GPv2Order for bytes;

  struct Order {
		address creator;
    address tokenIn;
    address tokenOut;
    uint256 amountIn;
    uint256 validTo;
    address[] beforeActionsTo;
    bytes[] beforeActionsData;
    address[] afterActionsTo;
    bytes[] afterActionsData;
		bytes32 orderType;
    uint256 priceOutOverIn;
  }
	
	ICoordinator public coordinator;

	address private _owner;
  IGPv2Settlement public GPv2Settlement;
  address public GPv2VaultRelay;

  address public delegate;
  mapping(address token => bool delegated) public delegatedTokens;

  mapping(bytes orderUID => Order orderStruct) public orders;
  bytes[] public activeOrdersByUid;
  mapping(address wagToken => uint256 virtualBalance) public virtualBalance;

	string public proxyName;

  /// @dev Value returned by a call to `isValidSignature` if the signature
  /// was verified successfully. The value is defined in EIP-1271 as:
  /// bytes4(keccak256("isValidSignature(bytes32,bytes)"))
  bytes4 internal constant MAGICVALUE = 0x1626ba7e;
  bytes32 internal constant domainSeparator = 0x8f05589c4b810bc2f706854508d66d447cd971f8354a4bb0b3471ceb0a466bc7;

  event OrderCreated(bytes orderUid, Order order, bytes32 indexed orderType);
  event OrderSettled(bytes orderUid, Order order, bytes32 indexed orderType);
  event OrderExpired(bytes orderUid, address creator, bytes32 indexed orderType);
  event OrderCancelled(bytes orderUid, address destroyer, bytes32 indexed orderType);
	event SmartOrderCreated(bytes orderUid, Order order, bytes32 indexed orderType);
	event DelegateIs(address delegate);
	event DelegateTokenAdded(address token);
	event DelegateTokenRemoved(address token);
	event ProxyNameChanged(string newName);

	modifier onlyWagToken() {
    require(coordinator.isWagToken(msg.sender), "Not allowed");
    _;
  }

	modifier onlyOwner() {
    require(msg.sender == owner(), "Caller is not the owner");
    _;
  }

	// this only matters in the implementation, but it's required for the proxies to call `initialize`
  constructor(address _coordinator) {
		_owner = _coordinator;
	}

  function initialize(address realOwner, string calldata _proxyName) external {
		require(owner() == address(0), "Already initialized");
		_owner = realOwner;
    coordinator = ICoordinator(msg.sender);
    GPv2Settlement = IGPv2Settlement(coordinator.GPv2Settlement());
    GPv2VaultRelay = coordinator.GPv2VaultRelay();
		proxyName = _proxyName;
		emit ConditionalOrderCreated(address(this));
  }

	/*//////////////////////////////////////////////////////////////
                      DIRECT ACTIONS LOGIC
    //////////////////////////////////////////////////////////////*/

	/**
   * @dev Executes a set of actions
	 * 	These actions are constrained in the same way as the orders are,
	 * 	aka action destinations are limited by Coordinator and
	 * 	flashloans are checked at the end of the call
   * @param actionsTo Destinations of the actions
   * @param actionsData Data for the actions
   **/
	function executeActions(address[] memory actionsTo, bytes[] memory actionsData) external onlyOwner {
		bool result;
		uint256 step;
		for (step; step < actionsTo.length; ){
        require(coordinator.allowedAddresses(actionsTo[step]), "Action destination not allowed");
        (result, ) = actionsTo[step].call(actionsData[step]);
        if (!result) break;
        unchecked { ++step; }
    }

    require(step == actionsTo.length, "Some actions failed");
    require(coordinator.activeLoansLength(owner()) == 0, "Flashloans still open");
	}

  /*//////////////////////////////////////////////////////////////
                      ORDER MANAGEMENT LOGIC
    //////////////////////////////////////////////////////////////*/

	/**
   * @dev Only used to place stop orders by the userProxy owner
	 **/
  function addStopOrder(GPv2Order.Data memory order, bytes memory apiOrderUid, 
      address[] memory beforeActionsTo, bytes[] memory beforeActionsData,
      address[] memory afterActionsTo, bytes[] memory afterActionsData, bytes32 _orderType, uint256 priceOutOverIn) external onlyOwner
  {
    require(order.kind == coordinator.KIND_SELL(),"Only SELL allowed");
    require(!order.partiallyFillable, "No partial fill orders");
    require(orders[apiOrderUid].validTo == 0, "Order already exists");
    bytes memory orderUid = coordinator.calculateOrderUid(order, address(this));
    require(GPv2Settlement.filledAmount(orderUid) == 0, "Order already settled");

		address tokenIn = address(order.sellToken);
		address tokenOut = address(order.buyToken);

		require(coordinator.isWagToken(tokenIn) && coordinator.isWagToken(tokenOut),"Only wagTokens supported");

		virtualBalance[tokenIn] += order.sellAmount;

		orderCleanup();

		uint i;
    // check that all destinations are valid
    for (i = 0; i < beforeActionsTo.length ; ){
      require(coordinator.allowedAddresses(beforeActionsTo[i]), "Action destination not allowed");
      unchecked { ++i; }
    }
    for (i = 0; i < afterActionsTo.length ; ){
      require(coordinator.allowedAddresses(afterActionsTo[i]), "Action destination not allowed");
      unchecked { ++i; }
    }

		orders[orderUid] = Order({ creator: msg.sender,
      tokenIn: tokenIn, tokenOut: tokenOut, amountIn: order.sellAmount, validTo: order.validTo,
      beforeActionsData: beforeActionsData, beforeActionsTo: beforeActionsTo,
      afterActionsData: afterActionsData, afterActionsTo: afterActionsTo, orderType: _orderType, priceOutOverIn: priceOutOverIn });
    
    activeOrdersByUid.push(orderUid);

    // the tokenIn transfer actually goes to VaultRelay so we make sure there's allowance
    if (IERC20(tokenIn).allowance(address(this), GPv2VaultRelay) == 0)
    {
      IERC20(tokenIn).approve(GPv2VaultRelay, type(uint256).max);
    }  

    emit SmartOrderCreated(orderUid, orders[orderUid], _orderType);

  }

	/**
   * @dev Only the delegated address can call this function
	 **/
  function addDelegateOrder(GPv2Order.Data memory order, bytes memory apiOrderUid, 
      address[] memory beforeActionsTo, bytes[] memory beforeActionsData,
      address[] memory afterActionsTo, bytes[] memory afterActionsData, bytes32 _orderType) external
  {
    require(msg.sender == delegate, "Only delegate allowed");
    require(delegatedTokens[address(order.sellToken)] && delegatedTokens[address(order.buyToken)], "Tokens not delegated");
		require(beforeActionsTo.length == 0 && afterActionsTo.length == 0,"Delegates can't place actions");
    _addOrder(order, apiOrderUid, beforeActionsTo, beforeActionsData, afterActionsTo, afterActionsData, _orderType);
  }

	/**
   * @dev Only the owner of the proxy can call this function
	 **/
  function addOrder(GPv2Order.Data memory order, bytes memory apiOrderUid, 
      address[] memory beforeActionsTo, bytes[] memory beforeActionsData,
      address[] memory afterActionsTo, bytes[] memory afterActionsData, bytes32 _orderType) external onlyOwner
  {
    _addOrder(order, apiOrderUid, beforeActionsTo, beforeActionsData, afterActionsTo, afterActionsData, _orderType);
  }

  /**
   * @dev Place an order to CowSwap and sets it as active
   *    - if tokenIn is not a WagToken then tokenIn has to be transferred to this proxy
   *    - if tokenIn is a WagToken then we can flashloan if underlying agToken is held by user
   *    - active orders that are expired are removed
   *    - all actions can only call whitelisted addresses (destinations)
   * @param order Follows the structure of a CowSwap order, to generate Uid properly
   * @param apiOrderUid The reference Uid generated by a CowSwap API call
   * @param beforeActionsTo Addresses to call in beforeSettlement
   * @param beforeActionsData Actions to do in beforeSettlement
   * @param afterActionsTo Addresses to call in afterSettlement
   * @param afterActionsData Actions to do in afterSettlement
	 * param orderType Type of the order (for indexing)
   **/
  function _addOrder(GPv2Order.Data memory order, bytes memory apiOrderUid, 
      address[] memory beforeActionsTo, bytes[] memory beforeActionsData,
      address[] memory afterActionsTo, bytes[] memory afterActionsData, bytes32 _orderType) internal
  {
    require(order.kind == coordinator.KIND_SELL(),"Only SELL allowed");
    require(!order.partiallyFillable, "No partial fill orders");
    require(orders[apiOrderUid].validTo == 0, "Order already exists");
    bytes memory orderUid = coordinator.calculateOrderUid(order, address(this));
    require(GPv2Settlement.filledAmount(orderUid) == 0, "Order already settled");
    require(keccak256(orderUid) == keccak256(apiOrderUid), "Order data does not match orderUid");

    address tokenIn = address(order.sellToken);
		address tokenOut = address(order.buyToken);
    bool tokenInIsWagToken = coordinator.isWagToken(tokenIn);

		require(tokenInIsWagToken || coordinator.isWagToken(tokenOut),"tokenIn or Out should be wagToken");
		
    if (!tokenInIsWagToken){ // if tokenIn is not WagToken then we definitely need to transfer it
      uint256 currentBalance = IERC20(tokenIn).balanceOf(address(this));
      require (currentBalance > order.sellAmount, "Not enough available proxy balance");
    } else {
      // add the virtual balance
      virtualBalance[tokenIn] += order.sellAmount;
    }

		orderCleanup();

		uint i;
    // check that all destinations are valid
    for (i = 0; i < beforeActionsTo.length ; ){
      require(coordinator.allowedAddresses(beforeActionsTo[i]), "Action destination not allowed");
      unchecked { ++i; }
    }
    for (i = 0; i < afterActionsTo.length ; ){
      require(coordinator.allowedAddresses(afterActionsTo[i]), "Action destination not allowed");
      unchecked { ++i; }
    }
    
    // we add the order to the mapping, then add it as an active order
		address creator;
		if (msg.sender != address(this)){
			creator = msg.sender;
		} else {
			creator = owner();
		}
    orders[orderUid] = Order({ creator: creator,
      tokenIn: tokenIn, tokenOut: tokenOut, amountIn: order.sellAmount, validTo: order.validTo,
      beforeActionsData: beforeActionsData, beforeActionsTo: beforeActionsTo,
      afterActionsData: afterActionsData, afterActionsTo: afterActionsTo, orderType: _orderType, priceOutOverIn: 0 });
    
    activeOrdersByUid.push(orderUid);

    // the tokenIn transfer actually goes to VaultRelay so we make sure there's allowance
    if (IERC20(tokenIn).allowance(address(this), GPv2VaultRelay) == 0)
    {
      IERC20(tokenIn).approve(GPv2VaultRelay, type(uint256).max);
    }

    GPv2Settlement.setPreSignature(orderUid, true);    

    emit OrderCreated(orderUid, orders[orderUid], _orderType);
  }


  /**
   * @dev Remove an order, after checking if caller has permision to do so
   * @param orderUid The orderUid to be removed
   **/
  function removeOrder(bytes calldata orderUid) external {
    bytes32 hashedOrderUid = keccak256(orderUid);
    for (uint i; i < activeOrdersByUid.length ; ) {
      if (keccak256(activeOrdersByUid[i]) == hashedOrderUid){
				if (orders[activeOrdersByUid[i]].creator == owner()){
					require(msg.sender == owner(), "Not allowed");
				} else {
					require(msg.sender == owner() || msg.sender == delegate, "Not allowed");
				}
        emit OrderCancelled(orderUid, msg.sender, orders[activeOrdersByUid[i]].orderType);
        _removeActiveOrder(i);
        // nullify signature in GPv2Settlement
        GPv2Settlement.setPreSignature(orderUid, false);
        return;
      }
      unchecked{ ++i; }
    }
    revert("No active order with that orderUid found");
  }

	/**
   * @dev Check for possible expired orders and remove them
   **/
	function orderCleanup() public {
		require(msg.sender == owner() || msg.sender == delegate, "Not allowed");
    uint i;
    uint timestamp = block.timestamp;
    for (i; i < activeOrdersByUid.length ; ){
      if (orders[activeOrdersByUid[i]].validTo < timestamp) {
        emit OrderExpired(activeOrdersByUid[i], orders[activeOrdersByUid[i]].creator, orders[activeOrdersByUid[i]].orderType);
        _removeActiveOrder(i);
      }
			unchecked { ++i; }
    }
	}

  /**
   * @return activeOrderUids An array of orderUids that are currently marked as active
   * but can be expired as well
   **/
	function getActiveOrders() external view returns(bytes[] memory) {
		return activeOrdersByUid;
	}

  /**
   * @param orderUid The orderUid of the active order desired
   * @return order An order structure as defined by CowSwap
   **/
  function getActiveOrderByUid(bytes calldata orderUid) external view returns(Order memory) {
    return orders[orderUid];
  }

  /**
   * @param tokenIn A token address
   * @return activeOrderUids All active order Uids which attempt to swap from `tokenIn`
   **/
  function getActiveOrderUidsWithTokenIn(address tokenIn) external view returns(bytes[] memory) {
    uint256 ordersFound;
    uint256 activeOrdersNumber = activeOrdersByUid.length;
    bytes[] memory requestedOrders = new bytes[](activeOrdersNumber);
    for (uint i; i < activeOrdersNumber ; ){
      if (orders[activeOrdersByUid[i]].tokenIn == tokenIn){
        requestedOrders[ordersFound]=activeOrdersByUid[i];
        unchecked { ++ordersFound; }
      }
      unchecked { ++i; }
    }
    assembly {                                                                                                                                                                
      mstore(requestedOrders, ordersFound)                                                                          
    }
    return requestedOrders;
  }

  /**
   * @param tokenOut A token address
   * @return activeOrderUids All active order Uids which attempt to swap to `tokenOut`
   **/
  function getActiveOrderUidsWithTokenOut(address tokenOut) external view returns(bytes[] memory) {
    uint256 ordersFound;
    uint256 activeOrdersNumber = activeOrdersByUid.length;
    bytes[] memory requestedOrders = new bytes[](activeOrdersNumber);
    for (uint i; i < activeOrdersNumber ; ){
      if (orders[activeOrdersByUid[i]].tokenOut == tokenOut){
        requestedOrders[ordersFound]=activeOrdersByUid[i];
        unchecked { ++ordersFound; }
      }
      unchecked { ++i; }
    }
    assembly {                                                                                                                                                                
      mstore(requestedOrders, ordersFound)                                                                          
    }
    return requestedOrders;
  }

	/**
   * @param orderType The type of the order
   * @return activeOrderUids All active order Uids which are of the specified type
   **/
  function getActiveOrderUidsByType(bytes32 orderType) external view returns(bytes[] memory) {
    uint256 ordersFound;
    uint256 activeOrdersNumber = activeOrdersByUid.length;
    bytes[] memory requestedOrders = new bytes[](activeOrdersNumber);
    for (uint i; i < activeOrdersNumber ; ){
      if (orders[activeOrdersByUid[i]].orderType == orderType){
        requestedOrders[ordersFound]=activeOrdersByUid[i];
        unchecked { ++ordersFound; }
      }
      unchecked { ++i; }
    }
    assembly {                                                                                                                                                                
      mstore(requestedOrders, ordersFound)                                                                          
    }
    return requestedOrders;
  }

  function _removeActiveOrder(uint256 index) internal {
    address tokenIn = orders[activeOrdersByUid[index]].tokenIn;
    bool tokenInIsWagToken = coordinator.isWagToken(tokenIn);
    if (tokenInIsWagToken){
        unchecked{ virtualBalance[tokenIn] -= orders[activeOrdersByUid[index]].amountIn; }
    }
    delete orders[activeOrdersByUid[index]];
    activeOrdersByUid[index] = activeOrdersByUid[activeOrdersByUid.length - 1];
    activeOrdersByUid.pop();
  }

  /*//////////////////////////////////////////////////////////////
                        SETTLEMENT LOGIC
    //////////////////////////////////////////////////////////////*/
  
  /**
   * @dev Function only gets called by a WagToken being transferred to GPv2Settlement
   *  It is executed before the main `transfer()` function of the token
   *  It looks for an active order that is marked as being `filled` in GPv2Settlement
   * @param token The address of the token being transferred
   */
  function beforeSettlement(address token) external onlyWagToken {
    Order memory order;
    for (uint i; i < activeOrdersByUid.length ; ) {
      order = orders[activeOrdersByUid[i]];
      if (GPv2Settlement.filledAmount(activeOrdersByUid[i]) > 0 && token == order.tokenIn){

        // execute order
        uint step;
        bool result;
        bytes memory retData; // do we keep this? can we use it in a generalized way?
        for (step; step < order.beforeActionsTo.length; ){
          (result, retData) = order.beforeActionsTo[step].call(order.beforeActionsData[step]);
          if (!result) break;
          unchecked { ++step; }
        }

        // all steps should complete successfully
        require(step == order.beforeActionsTo.length, "beforeSettlement: Some actions failed");

        // if a flashloan is still open, make sure afterSettlement will be called too
        bool tokenOutIsWagToken = coordinator.isWagToken(order.tokenOut);

        // if tokenOut is not a WagToken, order has been settled, delete it
        if (!tokenOutIsWagToken){
					require(coordinator.activeLoansLength(owner()) == 0, "beforeSettlement: Flashloans still open");
          emit OrderSettled(activeOrdersByUid[i], order, order.orderType);
          _removeActiveOrder(i);
        }

        break;

      }
      unchecked { ++i; }
    }
  }

  /**
   * @dev Function only gets called by a WagToken being transferred from GPv2Settlement
   *  It is executed after the main `transfer()` function of the token
   *  It looks for an active order that is marked as being `filled` in GPv2Settlement
   * @param token The address of the token being transferred
   */
  function afterSettlement(address token) external onlyWagToken {
    Order memory order;
    for (uint i; i < activeOrdersByUid.length ; ) {
      order = orders[activeOrdersByUid[i]];
      if (GPv2Settlement.filledAmount(activeOrdersByUid[i]) > 0 && token == order.tokenOut){
        
        // execute order
        uint step;
        bool result;
        bytes memory retData;
        for (step; step < order.afterActionsTo.length; ){
          (result, retData) = order.afterActionsTo[step].call(order.afterActionsData[step]);
          if (!result) break;
          unchecked { ++step; }
        }

        require(step == order.afterActionsTo.length, "afterSettlement: Some actions failed");
        require(coordinator.activeLoansLength(owner()) == 0, "Flashloans still open");

        emit OrderSettled(activeOrdersByUid[i], order, order.orderType);
        _removeActiveOrder(i);

        break;
        
      } 
      unchecked { ++i; }
    }
  } 

	/*//////////////////////////////////////////////////////////////
                        CONDITIONAL ORDERS
    //////////////////////////////////////////////////////////////*/

	/**
   * @dev Function required for CowSwap's Conditional Orders
	 * 	Used - so far - for activating stop loss orders
   * @notice Only the first valid stop loss order will be executed
   *    due to how CowSwap Smart Orders work
   */
		function getTradeableOrder() public view returns (GPv2Order.Data memory){
        IAgaveOracle oracle = IAgaveOracle(coordinator.Oracle());
        for (uint i; i < activeOrdersByUid.length; i++){
          if (orders[activeOrdersByUid[i]].priceOutOverIn > 0 && orders[activeOrdersByUid[i]].validTo > block.timestamp){
            Order memory order = orders[activeOrdersByUid[i]];
            // get oracle price
            address tokenIn = IWrappedAgToken(coordinator.wrappedToUnderlying(order.tokenIn)).underlyingAgToken();
            address tokenOut = IWrappedAgToken(coordinator.wrappedToUnderlying(order.tokenOut)).underlyingAgToken();
            uint256 priceIn = oracle.getAssetPrice(tokenIn);
            uint256 priceOut = oracle.getAssetPrice(tokenOut);

            uint256 oraclePrice = priceOut * 1 ether / priceIn; // we use 18 decimals
            uint256 priceOutOverIn = order.priceOutOverIn;      // we expect 18 decimals too
            if (priceOutOverIn <= oraclePrice){
              uint256 amountOut = order.amountIn * priceOutOverIn;
              return 
                GPv2Order.Data(
                  IERC20(order.tokenIn),
                  IERC20(order.tokenOut),
                  address(this),
                  order.amountIn,
                  amountOut,
                  uint32(order.validTo),
                  0x0000000000000000000000000000000000000000000000000000000000000000,
                  0,
                  GPv2Order.KIND_SELL,
                  false,
                  GPv2Order.BALANCE_ERC20,
                  GPv2Order.BALANCE_ERC20
                );
              }
          }
          unchecked{ ++i; }
        }
        revert();
		}

    /// @param orderDigest The EIP-712 signing digest derived from the order
    function isValidSignature(
        bytes32 orderDigest,
        bytes calldata
    ) external view returns (bytes4) {
        require(
            getTradeableOrder().hash(domainSeparator) == orderDigest,
            "encoded order != tradable order"
        );

        return MAGICVALUE;
    }

  /*//////////////////////////////////////////////////////////////
                            TRANSFERS
    //////////////////////////////////////////////////////////////*/

  // Withdrawal of ERC20 tokens from the proxy
  function withdrawAll(address token) external onlyOwner {
		bool tokenIsWagToken = coordinator.isWagToken(token);
		uint balance;
		if (!tokenIsWagToken){
			balance = IERC20(token).balanceOf(address(this));
		} else {
			unchecked {
				balance  = IERC20(token).balanceOf(address(this)) - virtualBalance[token]; // can't underflow
			}
		}
    withdraw(token, balance);
  }

  // Withdrawal of erc20 token from the proxy
  function withdraw(address token, uint256 amount) public onlyOwner {
    IERC20(token).transfer(owner(), amount);
  }

  // Transfer of erc20 token from the proxy
  function transfer(address receiver, address token, uint256 amount) external onlyOwner {
    IERC20(token).transfer(receiver, amount);
  }

	// Depositing of erc20 tokens
	function deposit(address token, uint256 amount) external {
		require(msg.sender == owner() || msg.sender == delegate, "Not allowed");
		IERC20(token).transferFrom(msg.sender, address(this), amount);
	}

  /*//////////////////////////////////////////////////////////////
                            DELEGATE
    //////////////////////////////////////////////////////////////*/

	/**
   * @dev (Re-)sets the delegate address for this proxy
	 **/
  function setDelegate(address newDelegate) external onlyOwner {
		if (delegate != address(0)){
			coordinator.removeProxyDelegate(delegate);
		}
    delegate = newDelegate;
		coordinator.addProxyDelegate(delegate);

		emit DelegateIs(delegate);
  }

	/**
   * @dev Adds a token that the delegated address can trade
	 **/
  function addDelegatedToken(address delegatedToken) external onlyOwner {
    require (!delegatedTokens[delegatedToken], "Token already delegated");
    delegatedTokens[delegatedToken] = true;
		
		emit DelegateTokenAdded(delegatedToken);
  }

	/**
   * @dev Removes a token that the delegated address can trade
	 **/
  function removeDelegatedToken(address delegatedToken) external onlyOwner {
    require(delegatedTokens[delegatedToken], "Token not delegated");
    delegatedTokens[delegatedToken] = false;

		emit DelegateTokenRemoved(delegatedToken);
  }

	/*//////////////////////////////////////////////////////////////
                              MISC
    //////////////////////////////////////////////////////////////*/

	function setProxyName(string calldata _newName) external onlyOwner {
		proxyName = _newName;

		emit ProxyNameChanged(proxyName);
	}

	function owner() public view returns(address) {
		return _owner;
	}

	function TransferOwnership(address _newOwner) public onlyOwner {
		require(_newOwner != address(0), "No zero address");
		_owner = _newOwner;
	}

}