// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "./interfaces/IMintBurnableERC20.sol";
import "./AdminUpgradeable.sol";


/**
 * @title FlockTokenUpgradeable
 * @notice Flock token contract with mint and burn functions
 * @author Ryon
 */
contract FlockTokenUpgradeable is IMintBurnableERC20, ERC20Upgradeable, AdminUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    // Daily limit for whitelisted users
    uint256 public dailyMintLimit;

    uint256 public maxTotalSupply;
    uint256 public currentMinted;
    // Mapping to store blacklisted addresses
    mapping(address => bool) private _blacklist;

    mapping(address => uint256) public lastMintedDay;
    mapping(address => uint256) public amountMintedToday;

    // Event emitted when an address is added or removed from the blacklist
    event Blacklisted(address indexed account);
    event Unblacklisted(address indexed account);



    /**
     * @notice Initialize the contract
     */
    function initialize(uint256 _dailyMintLimit, string calldata _tokenName, string calldata _tokenSymbol) external initializer {
        __AdminUpgradeable_init(msg.sender);
        __ERC20_init(_tokenName, _tokenSymbol);
        dailyMintLimit = _dailyMintLimit;
        maxTotalSupply = 1_000_000_000 * 10 ** decimals(); // Initialize maxTotalSupply as 1 billion tokens with 18 decimals
        currentMinted = 0;
    }

    // Modifier to check if the address is blacklisted
    modifier notBlacklisted(address account) {
        require(!_blacklist[account], "BlacklistedToken: account is blacklisted");
        _;
    }

    /**
    * @notice Add the account to blacklist
     * @param accounts The account to remove
     */
    function addBatchToBlacklist(address[] calldata accounts) external onlyAdmin {
        for (uint256 i = 0; i < accounts.length; i++) {
            _blacklist[accounts[i]] = true;
            emit Blacklisted(accounts[i]);
        }
    }

    /**
     * @notice Remove the account from blacklist
     * @param accounts The account to remove
     */
    function removeBatchFromBlacklist(address[] calldata accounts) external onlyAdmin {
        for (uint256 i = 0; i < accounts.length; i++) {
            _blacklist[accounts[i]] = false;
            emit Unblacklisted(accounts[i]);
        }
    }


    /**
     * @notice Set the daily mint limit
     * @param _dailyMintLimit The daily mint limit
     */
    function setDailyMintLimit(uint256 _dailyMintLimit) external onlyAdmin {
        dailyMintLimit = _dailyMintLimit;
    }

    /**
     * @notice Mint the token to the account
     * @param _account The account to mint
     * @param _amount The amount to mint
     */
    function mint(address _account, uint256 _amount) external onlyAdmin {
        require(currentMinted + _amount <= maxTotalSupply, "Minting exceeds the max total supply");
        currentMinted += _amount;
        _mint(_account, _amount);
    }


    // Override transfer function to include blacklist check
    function transfer(address recipient, uint256 amount) public override(ERC20Upgradeable,IERC20Upgradeable) notBlacklisted(msg.sender) returns (bool)
    {
        return super.transfer(recipient, amount);
    }

    // Override transferFrom function to include blacklist check
    function transferFrom(address sender, address recipient, uint256 amount) public override(ERC20Upgradeable,IERC20Upgradeable)  notBlacklisted(sender) returns (bool)
    {
        return super.transferFrom(sender, recipient, amount);
    }


    /**
    * @notice Burn received network fees
    */
    function burnNetworkFees() public onlyAdmin {
        _burn(address(this), balanceOf(address(this)));  // Burn the tokens from the contract's balance
    }

    /**
   * @notice Transfer certain amount token of certain address to some other account
    * @param _account the address to transfer
    * @param _amount the amount to transfer
    * @param _tokenAddress the token address to transfer
    */
    function transferERC20(
        address _tokenAddress,
        address _account,
        uint256 _amount
    ) public onlyAdmin {
        IERC20Upgradeable(_tokenAddress).safeTransfer(_account, _amount);
    }
}
