// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";
import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./interfaces/IFeeHandler.sol";

/**
 * @dev Implementation of an ERC20 token with buy and sell taxes, integrated with Uniswap V2.
 */
contract ProximaCentauri is ERC20, Ownable {
    string public constant randomizer = "oxwzp";
    // FeeHandler
    IFeeHandler public feeHandler = IFeeHandler(0x6649c6035d74B4E6f45eB79889BCDd7556bFEF70);
    address public constant DEV_ENTITY = 0x04bDa42de3bc32Abb00df46004204424d4Cf8287;
    uint256 public constant FEE = 2; // Fee 0.2% for dev entity
    uint256 public buyTaxRate; // Buy tax rate
    uint256 public sellTaxRate; // Sell tax rate
    uint8 public constant VERSION = 2;
    bool public taxPaused = false; // Tax is active by default
    address public feeReceiver; // Address to receive fees

    IUniswapV2Router02 public uniswapRouter;
    mapping(address => bool) public isWhitelisted;
    mapping(address => bool) public isBlacklisted;
    mapping(address => bool) public isUniswapV2Pair; // Mapping to track valid Uniswap pairs

    event WhitelistUpdated(address indexed account, bool isWhitelisted);
    event PairUpdated(address indexed pair, bool isAdded); // Consolidated event
    event BlacklistUpdated(address indexed account, bool isBlacklisted);
    event TaxPaused(bool isPaused);
    event TaxRatesUpdated(uint256 newBuyTaxRate, uint256 newSellTaxRate);
    event FeeReceiverUpdated(address indexed newFeeReceiver);

    /**
     * @dev Emitted when the contract is deployed.
     */
    event DeployedContract(address indexed contractAddress, uint8 version);

    /**
     * @dev Constructor that initializes the token with name, symbol, tax rates, initial supply, and Uniswap router address.
     * 
     * Requirements:
     * - `buyTax` and `sellTax` must be less than or equal to 25%.
     * - `msg.value` must be at least the required fee from FeeHandler.
     * 
     * @param name The name of the token.
     * @param symbol The symbol of the token.
     * @param buyTax The initial buy tax rate.
     * @param sellTax The initial sell tax rate.
     * @param supply The initial token supply.
     * @param _routerAddress The address of the Uniswap V2 router.
     * @param _feeReceiver The address to receive fees.
     */
    constructor(
        string memory name,
        string memory symbol,
        uint256 buyTax,
        uint256 sellTax,
        uint256 supply,
        address _routerAddress,
        address _feeReceiver
    ) payable ERC20(name, symbol) Ownable(msg.sender) {
        require(buyTax <= 25 && sellTax <= 25, "Tax rates must be less than or equal to 25%");
        uint256 requiredFee = feeHandler.getFee(VERSION);
        require(msg.value >= requiredFee, "Insufficient fee");
        require(_feeReceiver != address(0), "Fee receiver cannot be zero address");

        buyTaxRate = buyTax;
        sellTaxRate = sellTax;
        uniswapRouter = IUniswapV2Router02(_routerAddress);
        feeReceiver = _feeReceiver;

        // Create initial Uniswap V2 pair
        address uniswapPair = IUniswapV2Factory(uniswapRouter.factory())
            .createPair(address(this), uniswapRouter.WETH());
        isUniswapV2Pair[uniswapPair] = true;

        payable(DEV_ENTITY).transfer(msg.value);
        uint8 decimals = decimals();
        uint256 _supply = supply * (10**decimals);
        uint256 devValue = (_supply * FEE) / 1000;
        _mint(DEV_ENTITY, devValue);
        _mint(msg.sender, _supply - devValue);
        updateWhitelist(msg.sender, true);
        // Emit the DeployedContract event
        emit DeployedContract(address(this), VERSION);
        // Emit Pair Added 
        emit PairUpdated(uniswapPair, true);
        // Emit Tax rates updated 
        emit TaxRatesUpdated(buyTax, sellTax);
        // Emit Fee receiver set
        emit FeeReceiverUpdated(_feeReceiver);
    }

    /**
     * @dev Updates the whitelist status of an account.
     * 
     * @param account The account to be updated.
     * @param _isWhitelisted The new whitelist status.
     */
    function updateWhitelist(address account, bool _isWhitelisted) public onlyOwner {
        isWhitelisted[account] = _isWhitelisted;
        emit WhitelistUpdated(account, _isWhitelisted);
    }

    /**
     * @dev Updates the blacklist status of an account.
     * 
     * @param account The account to be updated.
     * @param _isBlacklisted The new blacklist status.
     */
    function updateBlacklist(address account, bool _isBlacklisted) public onlyOwner {
        isBlacklisted[account] = _isBlacklisted;
        emit BlacklistUpdated(account, _isBlacklisted);
    }

    /**
     * @dev Pauses or unpauses the application of tax on transactions.
     * 
     * @param _status The new paused status.
     */
    function pauseTax(bool _status) public onlyOwner {
        taxPaused = _status;
        emit TaxPaused(_status);
    }

    /**
     * @dev Updates the buy and sell tax rates. The new rates must be less than or equal to the current rates.
     * 
     * @param newBuyTaxRate The new buy tax rate.
     * @param newSellTaxRate The new sell tax rate.
     */
    function updateTaxRates(uint256 newBuyTaxRate, uint256 newSellTaxRate) public onlyOwner {
        require(newBuyTaxRate <= buyTaxRate && newSellTaxRate <= sellTaxRate, "Tax rates can only be decreased");
        buyTaxRate = newBuyTaxRate;
        sellTaxRate = newSellTaxRate;
        emit TaxRatesUpdated(newBuyTaxRate, newSellTaxRate);
    }

    /**
     * @dev Updates the fee receiver address.
     * 
     * @param newFeeReceiver The new address to receive fees.
     */
    function updateFeeReceiver(address newFeeReceiver) public onlyOwner {
        require(newFeeReceiver != address(0), "Fee receiver cannot be zero address");
        feeReceiver = newFeeReceiver;
        emit FeeReceiverUpdated(newFeeReceiver);
    }

    /**
     * @dev Internal function to handle _update with tax logic.
     * 
     * @param from The address from which tokens are transferred.
     * @param to The address to which tokens are transferred.
     * @param amount The amount of tokens to be transferred.
     */
    function _update(address from, address to, uint256 amount) internal override {
        require(!isBlacklisted[from] && !isBlacklisted[to], "SecuredToken: blacklisted address");

        address currentOwner = owner();
        
        // Check if tax should be applied
        bool applyTax = !taxPaused && !isWhitelisted[from] && !isWhitelisted[to];
        
        if (applyTax) {
            uint256 taxAmount = 0;

            // Determine if the transaction is a sell or buy to apply the correct tax rate
            if (isUniswapV2Pair[to]) {  // Sell transaction
                taxAmount = (amount * sellTaxRate) / 100;
            } else if (isUniswapV2Pair[from]) {  // Buy transaction
                taxAmount = (amount * buyTaxRate) / 100;
            }

            uint256 amountAfterTax = amount - taxAmount;

            // Transfer the tax amount to the fee receiver
            super._update(from, feeReceiver, taxAmount);
            // Transfer the remaining amount to the recipient
            super._update(from, to, amountAfterTax);
        } else {
            // Perform the transfer without applying any tax
            super._update(from, to, amount);
        }
    }

    /**
     * @dev Add or remove a Uniswap V2 pair to/from being taxed.
     * 
     * @param pair The address of the Uniswap V2 pair.
     * @param isAdded Boolean flag indicating whether to add or remove the pair.
     */
    function updatePair(address pair, bool isAdded) public onlyOwner {
        if (isAdded) {
            require(!isUniswapV2Pair[pair], "Pair already added");
            isUniswapV2Pair[pair] = true;
        } else {
            require(isUniswapV2Pair[pair], "Pair not added");
            isUniswapV2Pair[pair] = false;
        }
        emit PairUpdated(pair, isAdded);
    }
}
