// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.7;

// forge-lint: disable-next-line(unaliased-plain-import)
import "./stHYPE.sol";
// forge-lint: disable-next-line(unaliased-plain-import)
import "./Ownership.sol";
// forge-lint: disable-next-line(unaliased-plain-import)
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
// forge-lint: disable-next-line(unaliased-plain-import)
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
// forge-lint: disable-next-line(unaliased-plain-import)
import "@openzeppelin/contracts-upgradeable/governance/utils/VotesUpgradeable.sol";
// forge-lint: disable-next-line(unaliased-plain-import)
import "@openzeppelin/contracts/utils/math/SafeCast.sol";
// forge-lint: disable-next-line(unaliased-plain-import)
import "solmate/utils/FixedPointMathLib.sol";
// forge-lint: disable-next-line(unaliased-plain-import)
import "forge-std/console.sol";

/**
 * @title wstHype token contract
 * @notice This is the token contract for StakedHYPE. It is backed 1:1 by native HYPE.
 * It is rebasing and also a voting token. After each transfer, a new checkpoint is added via `votesUpgradeable` which we have modified to automatically
 * self-delegate every address and disable delegation to every address, thus the latest checkpoint is the
 * shares for a given address. This fork is here: https://github.com/thunderhead-labs/openzeppelin-contracts-upgradeable.
 * The changes are trivial. `shares` is the representation used for balance in storage,
 * although the real balance multiplies shares by totalSupply/totalShares. totalSupply linearly increases after
 * the Rebaser calls syncSupply which starts a new reward distribution interval. Shares have 24 decimals while actual balance has 18 decimals
 * this is to avoid rounding issues when dealing with 1 wei of balance. Relevant sources: https://forum.openzeppelin.com/t/self-delegation-in-erc20votes/17501/17 and
 * https://github.com/aragon/osx/blob/a52bbae69f78e74d6a17647370ccfa2f2ea9bbf0/packages/contracts/src/token/ERC20/governance/GovernanceERC20.sol#L113
 */
contract wstHYPE is Initializable, Ownership {
    using FixedPointMathLib for uint256;
    using SafeERC20 for IERC20;

    stHYPE public sthype;
    string public name;
    string public symbol;
    uint8 public decimals;

    // forge-lint: disable-next-line(screaming-snake-case-const)
    uint256 public constant balanceToShareDecimals = 10 ** 6;

    error SelfDisableTransfer();

    /**
     * @notice EIP20 allowance mapping
     */
    mapping(address => mapping(address => uint256)) private _allowedBalances;

    mapping(address => bool) public selfDisableTransfer;

    constructor() {
        _disableInitializers();
    }

    /**
     * @notice EIP20 Transfer event
     */
    event Transfer(address indexed from, address indexed to, uint256 amount);

    /**
     * @notice EIP20 Approval event
     */
    event Approval(address indexed owner, address indexed spender, uint256 amount);

    // forge-lint: disable-next-line(unwrapped-modifier-logic)
    modifier notSelfDisableTransfer() {
        if (selfDisableTransfer[msg.sender] == true) {
            revert SelfDisableTransfer();
        }
        _;
    }

    function initialize(string memory name_, string memory symbol_, uint8 decimals_, address gov_, address sthype_)
        public
        initializer
    {
        name = name_;
        symbol = symbol_;
        decimals = decimals_;

        __AccessControlDefaultAdminRules_init(0, gov_);
        _grantRole(PAUSER_ROLE, gov_);

        sthype = stHYPE(sthype_);
    }

    /**
     * @notice Sets the caller's self disable transfer status
     */
    function setSelfDisableTransfer(bool status) external {
        selfDisableTransfer[msg.sender] = status;
    }

    /**
     * Internal function to handle transfers/mints/burns
     * @param from address to decrease balance
     * @param to address to increase balance
     * @param amount balance delta
     * @dev _transferVotingRights handles the checkpointing functionality
     * within `VotesUpgradeable`. If the `to` or `from` address is zero address
     * then the function will increment/decrement total supply depending on whether
     * it is a mint or a burn. If it is just a normal transfer then it will append a new
     * checkpoint to the `from` address and the `to` address with their new balances. Rewards
     * are not high enough to have to worry about preSyncSupply underflowing.
     */
    function _transfer(address from, address to, uint256 amount) internal {
        sthype.transferShares(from, to, amount * balanceToShareDecimals);

        emit Transfer(from, to, amount);
    }

    /**
     * @dev Transfer tokens to a specified address.
     * @param to The address to transfer to.
     * @param value The amount to be transferred.
     * @return True on success, false otherwise.
     */
    function transfer(address to, uint256 value) external notSelfDisableTransfer returns (bool) {
        _transfer(msg.sender, to, value);

        return true;
    }

    /**
     * @dev Transfer tokens from one address to another.
     * @param from The address you want to send tokens from.
     * @param to The address you want to transfer to.
     * @param value The amount of tokens to be transferred.
     */
    function transferFrom(address from, address to, uint256 value) external notSelfDisableTransfer returns (bool) {
        if (selfDisableTransfer[from] == true) revert SelfDisableTransfer();

        // decrease allowance
        _allowedBalances[from][msg.sender] = _allowedBalances[from][msg.sender] - value;

        _transfer(from, to, value);

        return true;
    }

    /**
     * @param who The address to query.
     * @return The balance of the specified address.
     */
    function balanceOf(address who) external view returns (uint256) {
        return sthype.sharesOf(who) / balanceToShareDecimals;
    }

    /**
     * @dev Function to check the amount of tokens that an owner has allowed to a spender.
     * @param owner_ The address which owns the funds.
     * @param spender The address which will spend the funds.
     * @return The number of tokens still available for the spender.
     */
    function allowance(address owner_, address spender) external view returns (uint256) {
        return _allowedBalances[owner_][spender];
    }

    /**
     * @dev Approve the passed address to spend the specified amount of tokens on behalf of
     * msg.sender. This method is included for ERC20 compatibility.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     */
    function approve(address spender, uint256 value) external returns (bool) {
        _allowedBalances[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }

    function totalSupply() external view returns (uint256) {
        return sthype.totalShares() / balanceToShareDecimals;
    }

    /**
     * Perform rescues in case they are needed
     * @param token token address
     * @param to recipient address
     * @param amount amount
     */
    function rescueTokens(address token, address to, uint256 amount)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
        returns (bool)
    {
        IERC20(token).safeTransfer(to, amount);
        return true;
    }

    function setName(string memory name_) external onlyRole(DEFAULT_ADMIN_ROLE) {
        name = name_;
    }

    function setSymbol(string memory symbol_) external onlyRole(DEFAULT_ADMIN_ROLE) {
        symbol = symbol_;
    }
}
