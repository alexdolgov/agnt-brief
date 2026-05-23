//SPDX-License-Identifier: MIT

pragma solidity ^0.7.4;

/**
 * $$$$$$$\                   $$$$$$$$\                  $$\
 * $$  __$$\                  \__$$  __|                 $$ |
 * $$ |  $$ | $$$$$$\   $$$$$$\  $$ | $$$$$$\   $$$$$$\  $$ | $$$$$$$\
 * $$$$$$$\ |$$  __$$\ $$  __$$\ $$ |$$  __$$\ $$  __$$\ $$ |$$  _____|
 * $$  __$$\ $$ /  $$ |$$ /  $$ |$$ |$$ /  $$ |$$ /  $$ |$$ |\$$$$$$\
 * $$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |$$ |  $$ |$$ |  $$ |$$ | \____$$\
 * $$$$$$$  |\$$$$$$  |\$$$$$$$ |$$ |\$$$$$$  |\$$$$$$  |$$ |$$$$$$$  |
 * \_______/  \______/  \____$$ |\__| \______/  \______/ \__|\_______/
 *                     $$\   $$ |
 *                     \$$$$$$  |
 *                      \______/
 *
 * BogTools / Bogged Finance
 * https://bogtools.io/
 * https://bogged.finance/
 * Telegram: https://t.me/bogtools
 */

/**
 * Standard SafeMath, stripped down to just add/sub/mul/div
 */
library SafeMath {
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        // Solidity only automatically asserts when dividing by 0
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }
}

/**
 * BEP20 standard interface.
 */
interface IBEP20 {
    function totalSupply() external view returns (uint256);
    function decimals() external view returns (uint8);
    function symbol() external view returns (string memory);
    function name() external view returns (string memory);
    function getOwner() external view returns (address);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function allowance(address _owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

/**
 * Provides ownable & authorized contexts
 */
abstract contract BOGAuth {
    address owner;
    mapping (address => bool) private authorizations;

    constructor(address _owner) {
        owner = _owner;
        authorizations[_owner] = true;
    }

    /**
     * Function modifier to require caller to be contract owner
     */
    modifier onlyOwner() {
        require(isOwner(msg.sender)); _;
    }

    /**
     * Function modifier to require caller to be authorized
     */
    modifier authorized() {
        require(isAuthorized(msg.sender)); _;
    }

    /**
     * Authorize address. Any authorized address
     */
    function authorize(address adr) public authorized {
        authorizations[adr] = true;
        emit Authorized(adr);
    }

    /**
     * Remove address' authorization. Owner only
     */
    function unauthorize(address adr) public onlyOwner {
        authorizations[adr] = false;
        emit Unauthorized(adr);
    }

    /**
     * Check if address is owner
     */
    function isOwner(address account) public view returns (bool) {
        return account == owner;
    }

    /**
     * Return address' authorization status
     */
    function isAuthorized(address adr) public view returns (bool) {
        return authorizations[adr];
    }

    /**
     * Transfer ownership to new address. Caller must be owner.
     */
    function transferOwnership(address payable adr) public onlyOwner {
        owner = adr;
        authorizations[adr] = true;
        emit OwnershipTransferred(adr);
    }

    event OwnershipTransferred(address owner);
    event Authorized(address adr);
    event Unauthorized(address adr);
}

abstract contract BOGFinalizable is BOGAuth {
    bool public isFinalized;

    modifier unfinalized() {
        require(!isFinalized, "FINALIZED"); _;
    }

    modifier finalized() {
        require(isFinalized, "!FINALIZED"); _;
    }

    function finalize() public authorized unfinalized {
        isFinalized = true;
        emit Finalized();
    }

    event Finalized();
}

interface IBOGMigrationData {
    function totalHolders() external view returns (uint256);
    function totalBalances() external view returns (uint256);
    function totalStakes() external view returns (uint256);
    
    function getInfo(address holder) external view returns (bool migrated, uint256 stake, uint256 balance, bool preExploitHolder);
    
    function hasBeenMigrated(address holder) external view returns (bool);
    function getBalance(address holder) external view returns (uint256);
    function getStake(address holder) external view returns (uint256);
    function isPreExploitHolder(address holder) external view returns (bool);
}

contract BOGMigrationData is IBOGMigrationData, BOGAuth, BOGFinalizable {
    using SafeMath for uint256;
    
    struct MigrationData {
        bool migrated;
        uint256 stake;
        uint256 balance;
        bool isPreExploitHolder;
    }

    mapping (address => MigrationData) public migration;
    
    uint256 public override totalHolders;
    uint256 public override totalBalances;
    uint256 public override totalStakes;
    address public lastSeeded;

    constructor() BOGAuth(msg.sender) { }

    function seed(
        address[] calldata holders,
        uint256[] calldata stakes,
        uint256[] calldata balances,
        bool[] calldata preExploitHolders
    ) external authorized unfinalized {
        for(uint256 i; i<holders.length; i++){
            require(!migration[holders[i]].migrated, "Already seeded");
        
            migration[holders[i]] = MigrationData({
                migrated: true,
                stake: stakes[i],
                balance: balances[i],
                isPreExploitHolder: preExploitHolders[i]
            });
            
            totalBalances = totalBalances.add(balances[i]);
            totalStakes = totalStakes.add(stakes[i]);
        }
        totalHolders = totalHolders.add(holders.length);
        lastSeeded = holders[holders.length - 1];
    }
    
    function modify(address holder, uint256 stake, uint256 balance, bool preExploitHolder) external authorized unfinalized {
        totalBalances = totalBalances.sub(migration[holder].balance).add(balance);
        totalStakes = totalStakes.sub(migration[holder].stake).add(stake);
        
        migration[holder] = MigrationData({
            migrated: true,
            stake: stake,
            balance: balance,
            isPreExploitHolder: preExploitHolder
        });
    }
    
    function remove(address holder) external authorized unfinalized {
        totalHolders--;
        totalBalances = totalBalances.sub(migration[holder].balance);
        totalStakes = totalStakes.sub(migration[holder].stake);
        
        delete migration[holder];
    }
    
    function getInfo(address holder) external view override returns (bool migrated, uint256 stake, uint256 balance, bool preExploitHolder) {
        migrated = migration[holder].migrated;
        stake = migration[holder].stake;
        balance = migration[holder].balance;
        preExploitHolder = migration[holder].isPreExploitHolder;
    }

    function hasBeenMigrated(address holder) external view override returns (bool) {
        return migration[holder].migrated;
    }
    
    function getBalance(address holder) external view override returns (uint256) {
        return migration[holder].balance;
    }

    function getStake(address holder) external view override returns (uint256) {
        return migration[holder].stake;
    }

    function isPreExploitHolder(address holder) external view override returns (bool) {
        return migration[holder].isPreExploitHolder;
    }
}