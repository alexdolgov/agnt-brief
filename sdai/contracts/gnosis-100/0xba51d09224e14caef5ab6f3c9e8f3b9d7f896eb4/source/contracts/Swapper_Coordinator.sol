// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./interfaces/IERC20.sol";
import "./interfaces/IUserProxyImplementation.sol";
import "./interfaces/IUserProxyFactory.sol";
import "./interfaces/IAgToken.sol";
import "./libraries/GPv2Order.sol";

contract Swapper_Coordinator is Ownable {

  using GPv2Order for GPv2Order.Data;
  using GPv2Order for bytes;

  mapping(address owner => address[] proxies) public userProxies;
  mapping(address proxy => address owner) public proxyOwner;
	mapping(address owner => address[] delegates) public delegateToProxies;
  mapping(address externalContract => bool allowed) public allowedAddresses;
  mapping(address wrappedToken => address underlyingToken) public wrappedToUnderlying;

	mapping(address user => address[] tokensBorrowed) public activeLoans; // this should always be empty outside of a tx for all users

	address public UserProxyFactory;
	address public UserProxyImplementation;
  address public GPv2Settlement;
	address public GPv2VaultRelay;
  address public WagTokenAuthority;
  address public Oracle;
  address public Utils;

  // Settlement's domain separator, used to hash order IDs
  bytes32 internal constant domainSeparator = 0x8f05589c4b810bc2f706854508d66d447cd971f8354a4bb0b3471ceb0a466bc7; // gnosis chain_id for the standard GPv2Settlement address
  bytes32 public constant KIND_SELL = 0xf3b277728b3fee749481eb3e0b3b48980dbbab78658fc419025cb16eee346775;
  /// The byte length of an order unique identifier.
  uint256 internal constant UID_LENGTH = 56;

  event GenerateUserProxy(address user, address proxy, uint256 index, string proxyName);

	modifier onlyWagToken() {
    require(isWagToken(msg.sender), "Not allowed");
    _;
  }

  constructor(address settlementAddress, address relayAddress, address oracleAddress) {
    GPv2Settlement = settlementAddress;
		GPv2VaultRelay = relayAddress;
    Oracle = oracleAddress;
  }

	/**
   * @dev Generates a new User Proxy
	 * @param _proxyName The name for the proxy
   */
  function generateUserProxy(string calldata _proxyName) public returns(address newUserProxy) {
		require(UserProxyFactory != address(0), "UserProxyFactory not set");
    
		newUserProxy = IUserProxyFactory(UserProxyFactory).generateUserProxy(msg.sender, userProxies[msg.sender].length+1);

    userProxies[msg.sender].push(newUserProxy);
    proxyOwner[newUserProxy] = msg.sender;

		// IUserProxyImplementation(newUserProxy).initialize(msg.sender, _proxyName);
    IUserProxyImplementation(newUserProxy).initialize(_proxyName);

    emit GenerateUserProxy(msg.sender, newUserProxy, userProxies[msg.sender].length, _proxyName);
  }

	function setUserProxyFactory(address _userProxyFactory) external onlyOwner{
		UserProxyFactory = _userProxyFactory;
	}

  function setUserProxyImplementation(address _userProxyImplementation) external onlyOwner{
    UserProxyImplementation = _userProxyImplementation;
  }

  function setUtils(address _utils) external onlyOwner{
    allowedAddresses[Utils] = false;
    Utils = _utils;
    allowedAddresses[_utils] = true;
  }

  function setOracle(address _oracle) external onlyOwner{
    Oracle = _oracle;
  }

  function isWagToken(address token) public view returns (bool) {
    if (wrappedToUnderlying[token] != address(0)){
      return true;
    }
    return false;
  }

  function changeWagTokenAuthority(address newWagTokenAuthority) external onlyOwner {
    WagTokenAuthority = newWagTokenAuthority;
  }

  function addWagToken(address underlyingAgTokenAddress, address newWagTokenAddress) external {
    require(msg.sender == WagTokenAuthority, "Not allowed");
    wrappedToUnderlying[newWagTokenAddress] = underlyingAgTokenAddress;
		allowedAddresses[newWagTokenAddress] = true;
		allowedAddresses[underlyingAgTokenAddress] = true;
    allowedAddresses[IAgToken(underlyingAgTokenAddress).UNDERLYING_ASSET_ADDRESS()] = true;
  }

  function removeWagToken(address WagTokenAddress) external {
    require(msg.sender == WagTokenAuthority, "Not allowed"); 
		allowedAddresses[WagTokenAddress] = false;
		allowedAddresses[wrappedToUnderlying[WagTokenAddress]] = false;
    allowedAddresses[IAgToken(wrappedToUnderlying[WagTokenAddress]).UNDERLYING_ASSET_ADDRESS()] = false;
    wrappedToUnderlying[WagTokenAddress] = address(0);
  }

  function setGPv2Contracts(address settlementAddress, address relayAddress) external onlyOwner {
		GPv2Settlement = settlementAddress;
		GPv2VaultRelay = relayAddress;
	}

  function setAddressAllowedState(address contractAddress, bool state) external onlyOwner {
    allowedAddresses[contractAddress] = state;
  }

	function updateProxyOwner(address oldOwner, address newOwner) external {
		require(proxyOwnerAddress(msg.sender) == oldOwner, "Not allowed");
		proxyOwner[msg.sender] = newOwner;
		userProxies[newOwner].push(msg.sender);
		uint256 proxyIdx;
		for (proxyIdx ; proxyIdx < userProxies[oldOwner].length ; ){
			if (userProxies[oldOwner][proxyIdx] == msg.sender) {
				userProxies[oldOwner][proxyIdx] = userProxies[oldOwner][userProxies[oldOwner].length-1];
				userProxies[oldOwner].pop();
				break;
			}
			unchecked { ++proxyIdx; }
		}
	}

  /**
     * @dev Getter for userProxies, returns the proxy address for user or 0x0 if user doesn't have a proxy
     */
  function userProxyAddress(address user) public view returns (address[] memory) {
    return userProxies[user];
  }

  /**
   * @dev Getter for proxyOwner, returns the user EOA for the proxy address or 0x0 if the proxy doesn't exist
   */
  function proxyOwnerAddress(address proxy) public view returns (address){
    return proxyOwner[proxy];
  }

	function addProxyDelegate(address delegate) external {
		require(proxyOwnerAddress(msg.sender) != address(0), "Not allowed");
		for (uint i; i< delegateToProxies[msg.sender].length ; ){
			require(delegateToProxies[msg.sender][i] != delegate, "Already delegated");
			unchecked { ++i; }
		}
		delegateToProxies[msg.sender].push(delegate);
	}

	function removeProxyDelegate(address delegate) external {
		require(proxyOwnerAddress(msg.sender) != address(0), "Not allowed");
		for (uint i; i< delegateToProxies[msg.sender].length ; ){
			if (delegateToProxies[msg.sender][i] == delegate) {
				delegateToProxies[msg.sender][i] = delegateToProxies[msg.sender][delegateToProxies[msg.sender].length - 1];
				delegateToProxies[msg.sender].pop();
				return;
			}
			unchecked { ++i; }
		}
	}

  function calculateOrderUid(GPv2Order.Data calldata _order, address _user) external pure returns (bytes memory) {
    bytes32 _orderDigest = _order.hash(domainSeparator);

    bytes memory _orderUid = new bytes(UID_LENGTH);

    _orderUid.packOrderUidParams(
      _orderDigest,
      _user,
      _order.validTo
    );

    return _orderUid;
  }

	/*//////////////////////////////////////////////////////////////
                        FLASHLOAN LOGIC
  //////////////////////////////////////////////////////////////*/

  /**
   * @dev WagTokens call this function to add themselves to active loan list
	 * In other words, a new loan is opened
	 * @param user The user to add a loan for
   */
  function activeLoanAdd(address user) external onlyWagToken {
    if (!activeLoanExists(user, msg.sender)){
      activeLoans[user].push(msg.sender);
    }
  }

  /**
   * @dev WagTokens call this function to remove themselves to active loan list
	 * In other words, a loan is succesfully closed
	 * @param user The user to remove the loan for
   */
  function activeLoanRemove(address user) external onlyWagToken {
    for (uint i; i < activeLoans[user].length ; ){
      if (msg.sender == activeLoans[user][i]){
        activeLoans[user][i] = activeLoans[user][activeLoans[user].length - 1];
        activeLoans[user].pop();
      }
			unchecked { ++i; }
    }
  }

  /**
   * @dev Helper to check if a specific token is currently loaned
	 * It will only return true inside a transaction
	 * @param user The user to check for
	 * @param token The token to check for
	 * @return true if the token has been loaned to this address
   */
  function activeLoanExists(address user, address token) public view returns(bool) {
    for (uint i; i < activeLoans[user].length ; ){
      if (token == activeLoans[user][i]){
        return true;
      }
      unchecked { ++i; }
    }
    return false;
  }

	/**
   * @dev Viewer returning how many loans a user has open at any given point
	 * Note: the returned value should always be 0 outside a flashloan transaction
	 * @param user The user to check for
	 * @return nrOfLoans
   */
	function activeLoansLength(address user) external view returns(uint256) {
		return activeLoans[user].length;
	}

}