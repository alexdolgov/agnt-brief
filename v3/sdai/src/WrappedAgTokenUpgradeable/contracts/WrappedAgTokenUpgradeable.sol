// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.19;

import {ERC20Upgradeable} from "./utils/ERC20Upgradeable.sol";
import {ConditionalSwapperAdapterUpgradeable} from "./utils/ConditionalSwapperAdapterUpgradeable.sol";
import {IAgToken} from "./interfaces/IAgToken.sol";
import {DataTypes} from  "./libraries/DataTypes.sol";
import {ICoordinator} from "./interfaces/ICoordinator.sol";
import {IUserProxyImplementation} from "./interfaces/IUserProxyImplementation.sol";

/// @notice Wrapped AgToken (ERC-20) implementation.
/// @author Luigy-Lemon & Pogo
/// @author Inspired by Solmate WETH (https://github.com/Rari-Capital/solmate/blob/main/src/tokens/WETH.sol)
contract WrappedAgTokenUpgradeable is ERC20Upgradeable, ConditionalSwapperAdapterUpgradeable {

    event Deposit(address indexed from, uint256 amount);

    event Withdrawal(address indexed to, uint256 amount);

    event Claimed(uint256 amount);

    event ManagerChanged(address indexed newManager);

    event CollectorChanged(address indexed newCollector);

    event SwapperChanged(address indexed newSwapper);

    address public factory;
    address public manager;
    address public interestCollector;
    address public reserveAsset;
    address public creditDelegationManager;
    IAgToken public underlyingAgToken;

    uint256 public FeeRate;
    uint256 public FeeDecimalPrecision;
    mapping (address borrower => uint256 amountBorrowed) loanedAmount;
    
    /*//////////////////////////////////////////////////////////////
                        AUTH LOGIC
    //////////////////////////////////////////////////////////////*/

    modifier isManager {
        require(msg.sender == manager ||msg.sender == factory, "UNAUTHORIZED");
        _;
    }

		/*//////////////////////////////////////////////////////////////
                       CONSTRUCTOR & INITIALIZER
    //////////////////////////////////////////////////////////////*/

		constructor(address _factory) {
			factory = _factory;
		}

		function initialize(
			string memory tokenName,
    	string memory tokenSymbol,
    	uint8 tokenDecimals,
    	address _underlyingAgToken,
    	address _interestCollector,
    	address governanceAddress
		) external {
			require(factory == address(0), "Already initialized"); // can't be initialized more than once in the proxies, template can't be initialized due to constructor
			__ERC20_init(tokenName, tokenSymbol, tokenDecimals);
			interestCollector = _interestCollector;
    	underlyingAgToken = IAgToken(_underlyingAgToken);
    	reserveAsset = underlyingAgToken.UNDERLYING_ASSET_ADDRESS();
    	manager = governanceAddress;
    	factory = msg.sender;
		FeeDecimalPrecision = 10000;
		}

    /*//////////////////////////////////////////////////////////////
                        TRANSFER LOGIC
    //////////////////////////////////////////////////////////////*/

    function transfer(address to, uint256 amount) public override returns (bool) {

        _beforeTokenTransfer(msg.sender, to, amount);
        
        _balances[msg.sender] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            _balances[to] += amount;
        }

        _afterTokenTransfer(msg.sender, to, amount);

        emit Transfer(msg.sender, to, amount);

        return true;
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public override returns (bool) {

        uint256 allowed = allowance[from][msg.sender]; // Saves gas for limited approvals.
      
        if (allowed != type(uint256).max) allowance[from][msg.sender] = allowed - amount;

        _beforeTokenTransfer(from, to, amount);

        _balances[from] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            _balances[to] += amount;
        }

        _afterTokenTransfer(from, to, amount);

        emit Transfer(from, to, amount);

        return true;
    }

    function balanceOf(address account) public view override returns (uint256) {
        address proxyOwner = ConditionalSwapper.proxyOwnerAddress(account);
        if (proxyOwner != address(0) ){    // check if `account` is a userProxy
            return _balances[account] + IUserProxyImplementation(account).virtualBalance(address(this));
        } 
        return _balances[account];
    }

    /*//////////////////////////////////////////////////////////////
                        WRAPPER LOGIC
    //////////////////////////////////////////////////////////////*/

    function deposit(uint256 amount) public{

        underlyingAgToken.transferFrom(msg.sender, address(this), amount);

        _mint(msg.sender, amount);

        emit Deposit(msg.sender, amount);
    }

    function withdraw(uint256 amount) public {
        
        _burn(msg.sender, amount);

        underlyingAgToken.transfer(msg.sender, amount);

        emit Withdrawal(msg.sender, amount);
    }

  /*//////////////////////////////////////////////////////////////
                      FLASHLOAN LOGIC
  //////////////////////////////////////////////////////////////*/

  function flashLoanOpen(address _receiver, uint256 _amount) external {
    address caller = ConditionalSwapper.proxyOwnerAddress(msg.sender); // returns the user EOA for the proxy address or 0x0 if the proxy doesn't exist
    require(caller != address(0), "Not allowed"); // ensures msg.sender is a registered userProxy
		if(_balances[msg.sender] < _amount)
		{
			uint256 amountToLoan;
			unchecked{
				amountToLoan = _amount - _balances[msg.sender];
			}
			loanedAmount[caller] += amountToLoan + ((amountToLoan * FeeRate) / FeeDecimalPrecision);
    	_mint(_receiver, amountToLoan);
    	ConditionalSwapper.activeLoanAdd(caller);
		}
  }

  function flashLoanClose() external {
    address caller = ConditionalSwapper.proxyOwnerAddress(msg.sender);
    require(caller != address(0), "Not allowed"); // ensures msg.sender is a registered userProxy
    _burn(msg.sender, loanedAmount[caller]);
    loanedAmount[caller] = 0;
    ConditionalSwapper.activeLoanRemove(caller);
  }

    function checkLoanedAmount(address user) external view returns(uint256){
        return loanedAmount[user];
    }

    /*//////////////////////////////////////////////////////////////
                        TREASURY LOGIC
    //////////////////////////////////////////////////////////////*/

    function claim() public {
        uint256 claimable = underlyingAgToken.balanceOf(address(this)) - totalSupply;

        underlyingAgToken.transfer(interestCollector, claimable);
        
        require(underlyingAgToken.balanceOf(address(this)) == totalSupply, "Validation failed");

        emit Claimed(claimable);
    }

    function transferERC20Token(address token) public returns(bool){
        require(token != address(underlyingAgToken));
        ERC20Upgradeable asset = ERC20Upgradeable(token);
        uint256 balance = asset.balanceOf(address(this));
        return asset.transfer(interestCollector, balance);
    }

    /*//////////////////////////////////////////////////////////////
                        GOVERNANCE LOGIC
    //////////////////////////////////////////////////////////////*/

    function setInterestCollector(address newCollector) external isManager() {
        interestCollector = newCollector;
        emit CollectorChanged(newCollector);

    }

    function setManager(address newManager) external isManager() {
        manager = newManager;
        emit ManagerChanged(newManager);

    }

    function setConditionalSwapper(address newSwapper) external isManager() {
        updateConditionalSwapper(newSwapper);
        emit SwapperChanged(newSwapper);
    }

    function setFeeRate(uint256 newFee) external isManager(){
        require(newFee < FeeDecimalPrecision);
        FeeRate = newFee;  
    }

    function updateAndApproveCreditDelegationManager(address _newCreditDelegationManager) external isManager() {
      if(creditDelegationManager != address(0)) {
        underlyingAgToken.approve(creditDelegationManager, 0);
      }
      creditDelegationManager = _newCreditDelegationManager;
      underlyingAgToken.approve(creditDelegationManager, 2**256 - 1);
    }

    receive() external payable {
        revert("Contract can only handle ERC20 tokens");
    }
}
