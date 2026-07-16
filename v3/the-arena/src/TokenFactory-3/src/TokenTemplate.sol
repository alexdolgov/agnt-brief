// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

interface ITokenManager {
    function STAKER_REWARD_TOKEN_VAULT() external view returns (address);
    function arenaPoolDeployer() external view returns (address);
}

contract TokenTemplate is ERC20, Ownable {

    struct Whitelist {
        address[] addresses;
        uint256 startTsOffset;
        uint256 duration;
        uint256 transferLimit;
        uint256 balanceLimit;
    }
    address public constant POOL_MANAGER = 0x06380C0e0912312B5150364B9DC4542BA0DbBc85;
    address public creator;
    Whitelist public whitelist;
    mapping(address => bool) public blacklistedAddresses;
    mapping(address => bool) public whitelistedAddresses;
    mapping(address => uint256) public whitelistReceivedAmount;
    uint256 public whitelistStartTimestamp;
    uint256 public whiteListOffTimestamp;
    uint256 public whitelistLimit;
    uint256 public whitelistBalanceLimit;
    uint256 public constant MAX_NAME_BYTE_LENGTH = 50;
    uint256 public constant MAX_SYMBOL_BYTE_LENGTH = 30;
    address public immutable ArenaTokenManager;

    event ArenaTokenTransfer(address indexed from, address indexed to, uint256 value);

    constructor(string memory name, string memory symbol, address _admin) ERC20(name, symbol) Ownable(_admin) {
        require(bytes(name).length <= MAX_NAME_BYTE_LENGTH, "Name string length exceeds max byte size");
        require(bytes(symbol).length <= MAX_SYMBOL_BYTE_LENGTH,"Symbol string length exceeds max byte size");
        ArenaTokenManager = _admin;
    }

    function setWhitelistedAddresses(Whitelist calldata _whitelist) external onlyOwner {
        require(_whitelist.duration <= 3 days, "Duration must be less or equal to 3 day");
        require(_whitelist.transferLimit > 0, "Transfer limit must be greater than 0");
        require(_whitelist.balanceLimit > 0, "Balance limit must be greater than 0");
        require(_whitelist.balanceLimit >= _whitelist.transferLimit, "Balance limit must be >= transfer limit");
        require(_whitelist.startTsOffset < 2 weeks, "Start timestamp offset must be less than 2 weeks");
        require(_whitelist.addresses.length <= 620, "Addresses array must not be greater than 620");
        require(_whitelist.addresses.length > 0, "Addresses array must not be empty");
        for (uint256 i = 0; i < _whitelist.addresses.length; i++) {
            whitelistedAddresses[_whitelist.addresses[i]] = true;
        }
        whitelistStartTimestamp = block.timestamp + _whitelist.startTsOffset;
        whiteListOffTimestamp = whitelistStartTimestamp + _whitelist.duration;
        whitelistLimit = _whitelist.transferLimit;
        whitelistBalanceLimit = _whitelist.balanceLimit;
    }

    function setCreator(address _creator) external onlyOwner {
        creator = _creator;
    }

    function extendWhitelist(address[] calldata _addresses) external onlyOwner {
        require(whiteListOffTimestamp > 0, "Whitelist is not set");
        require(whiteListOffTimestamp > block.timestamp, "Whitelist is off");
        require(_addresses.length > 0, "Addresses array must not be empty");
        require(_addresses.length <= 620, "Addresses array must not be greater than 620");
        for (uint256 i = 0; i < _addresses.length; i++) {
            whitelistedAddresses[_addresses[i]] = true;
        }
    }

    function removeWhitelistAddresses(address[] calldata _addresses) external onlyOwner {
        for (uint256 i = 0; i < _addresses.length; i++) {
            whitelistedAddresses[_addresses[i]] = false;
        }
    }

    function getWhiteListInformation(address _user) external view returns (bool isWhitelisted, uint256 whiteListOffTs, uint256 maxAmount, uint256 maxBalance, uint256 receivedAmount, uint256 startTimestamp) {
        return (whitelistedAddresses[_user], whiteListOffTimestamp, whitelistLimit, whitelistBalanceLimit, whitelistReceivedAmount[_user], whitelistStartTimestamp);
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function burn(address account, uint256 value) external onlyOwner {
        _burn(account, value);
    }

    function _update(address from, address to, uint256 value) internal override {
        require(!blacklistedAddresses[to], "Sender is blacklisted");
        if(whitelistStartTimestamp > block.timestamp) { // skips if not set
            revert("Trade not allowed");
        }
        if(whiteListOffTimestamp > block.timestamp) { // skips if not set
            address arenaTokenVault = ITokenManager(ArenaTokenManager).STAKER_REWARD_TOKEN_VAULT();
            address arenaPoolDeployer = ITokenManager(ArenaTokenManager).arenaPoolDeployer();
            if (tx.origin != arenaTokenVault && tx.origin != creator) {
                require(whitelistedAddresses[tx.origin], "tx.origin is not whitelisted");
                bool isExempted = to == ArenaTokenManager || to == arenaTokenVault || from == ArenaTokenManager || from == arenaTokenVault || to == arenaPoolDeployer || from == arenaPoolDeployer;
                if(!isExempted) {
                    require(value <= whitelistLimit, "Whitelist transfer limit exceeded");
                    
                    // Balance limit tracking:
                    // 1. Mints: track against tx.origin (handles aggregators like AvaxHelper)
                    // 2. DEX purchases: track against tx.origin (handles aggregators buying from DEX)
                    // 3. Regular transfers: no tracking
                    if(from == address(0)) {
                        // Case 1: Minting (buying through TokenManager/intermediaries)
                        require(whitelistReceivedAmount[tx.origin] + value <= whitelistBalanceLimit, "Whitelist balance limit exceeded");
                        whitelistReceivedAmount[tx.origin] += value;
                    } else if(from == POOL_MANAGER) {
                        // Case 2: Transfer from DEX pair (buying from DEX)
                        // Track against tx.origin to handle aggregators correctly
                        require(whitelistReceivedAmount[tx.origin] + value <= whitelistBalanceLimit, "Whitelist balance limit exceeded");
                        whitelistReceivedAmount[tx.origin] += value;
                    }
                    // Case 3: Transfers from whitelisted users or non-pair contracts - no tracking
                }
            }
        }
        super._update(from, to, value);
        emit ArenaTokenTransfer(from, to, value);
    }

    function setBlacklistStatus(address _address, bool _isBlacklisted) external onlyOwner {
        blacklistedAddresses[_address] = _isBlacklisted;
    }

}
