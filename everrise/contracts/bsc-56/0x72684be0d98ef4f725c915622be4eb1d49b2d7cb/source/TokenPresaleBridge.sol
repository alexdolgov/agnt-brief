pragma solidity 0.8.11;

// SPDX-License-Identifier: MIT
/*
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}

interface IERC20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}



contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor () {
        address msgSender = _msgSender();
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(_owner == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

contract TokenPresaleBridge is Ownable {
    
    mapping (address => bool) public walletWhitelisted;
    mapping (address => uint256) public purchasedAmount;

    event TokensBought(uint256 tokenAmount, uint256 indexed bnbAmount, address indexed sender);
    event TransferForeignToken(address token, uint256 amount);
    
    uint256 public tokensPerBnb =  430000*1e18; // .25% of 1 
    uint256 public maxBnbAmount = 6 ether;
    uint256 public minBnbAmount = 1 ether;
    uint256 public totalBnbCap = 1750 ether;
    uint256 public totalPurchasedAmount;
    bool public isInitialized = false;
    bool public isWhitelistPresale = true;
    address payable public presaleFundRecipient = payable(0xbF16ff50261150CEd9053396d94bCCd8050EAef3);

    constructor() {
    }
    
    receive() external payable {
        buyTokens();
    }
    
    function buyTokens() payable public {
        require(isInitialized, "Sale not active");
        if(isWhitelistPresale){
            require(walletWhitelisted[msg.sender], "User is not whitelisted");
        }
        require(msg.value > 0, "Must send BNB to get tokens");
        require(msg.value % minBnbAmount == 0, "Must buy in increments of Minimum BNB Amount");
        require(msg.value + purchasedAmount[msg.sender] <= maxBnbAmount, "Cannot buy more than MaxBNB Amount");
        require(msg.value + totalPurchasedAmount <= totalBnbCap, "No more tokens available for presale");

        (bool success,) = presaleFundRecipient.call{value: address(this).balance}("");
        require(success, "Withdrawal was not successful");
        
        purchasedAmount[msg.sender] += msg.value;
        totalPurchasedAmount += msg.value;
        
        uint256 tokenAmount = (msg.value * tokensPerBnb)/1e18;

        emit TokensBought(tokenAmount, msg.value, msg.sender);
    }
    
    function initialize() external onlyOwner {
        require(!isInitialized, "May not initialize contract again");
        isInitialized = true;
    }
    
    function updateMinBnbAmount(uint256 newAmt) external onlyOwner{
        minBnbAmount = newAmt;
        require(maxBnbAmount >= minBnbAmount, "can't set the max lower than the min");
    }
    
    function updateMaxBnbAmount(uint256 newAmt) external onlyOwner{
        maxBnbAmount = newAmt;
        require(maxBnbAmount >= minBnbAmount, "can't set the max lower than the min");
    }
    
    function updateTotalCap(uint256 newCap) external onlyOwner{
        totalBnbCap = newCap;
    }
    
    function setWhiteListPresale(bool isWhitelist) external onlyOwner {
        isWhitelistPresale = isWhitelist;
    }
        
    function whitelistWallet(address wallet, bool value) public onlyOwner {
        walletWhitelisted[wallet] = value;
    }
    
    function whitelistWallets(address[] memory wallets) public onlyOwner {
        for(uint256 i = 0; i < wallets.length; i++){
            whitelistWallet(wallets[i], true);
        }
    }
    
    // owner can withdraw any stuck BNB
    function withdrawBNB() external onlyOwner {
        (bool success,) = msg.sender.call{value: address(this).balance}("");
        require(success, "Withdrawal was not successful");
    }

    function transferForeignToken(address _token, address _to)
        external
        onlyOwner
        returns (bool _sent)
    {
        require(_token != address(0), "_token address cannot be 0");
        uint256 _contractBalance = IERC20(_token).balanceOf(address(this));
        _sent = IERC20(_token).transfer(_to, _contractBalance);
        emit TransferForeignToken(_token, _contractBalance);
    }
}