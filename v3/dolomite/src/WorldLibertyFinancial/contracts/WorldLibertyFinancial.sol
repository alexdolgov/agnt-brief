// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.25;

import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20VotesUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract WorldLibertyFinancial is
    ERC20VotesUpgradeable,
    ERC20PausableUpgradeable,
    ERC20BurnableUpgradeable,
    Ownable2StepUpgradeable
{
    using SafeERC20 for IERC20;

    uint256 public MAX_VOTING_POWER;

    mapping(address => bool) private _guardians;
    mapping(address => bool) private _allowListStatus;
    mapping(address => bool) private _excludedVotingPower;

    event SetGuardian(address indexed guardian, bool status);
    event AllowListStatus(address indexed sender, bool status);

    /**
     * @notice Initialize World Liberty Financial (WLFI) Token
     */
    function initialize(address treasury) external initializer {
        // Initialize ERC20
        __ERC20_init("World Liberty Financial", "WLFI");

        // Initialize ERC20Votes
        __ERC20Votes_init();

        // Initialize Burnable
        __ERC20Burnable_init();

        // Initialize Pausable
        __ERC20Pausable_init();

        // Initialize Ownable
        __Ownable_init(treasury);

        // 5% of the total supply
        MAX_VOTING_POWER = 5_000_000_000e18;

        // Authorize address(0) to allow minting in the constructor
        _allowListStatus[address(0)] = true;

        // Authorize treasury address to allow minting in the constructor
        _allowListStatus[treasury] = true;

        // Mint WLFI Total Supply in the treasury
        _mint(treasury, 100_000_000_000e18);

        // Remove authorization for address(0)
        _allowListStatus[address(0)] = false;

        // Emit Authorization event for treasury
        emit AllowListStatus(treasury, true);
    }

    /**
     * @notice Set guardian status for address
     * @param guardian Guardian address
     * @param status Guardian status
     * @dev Only treasury multisig can invoke this function
     */
    function setGuardian(address guardian, bool status) external onlyOwner {
        require(guardian != address(0), "Invalid guardian address");
        _guardians[guardian] = status;
        emit SetGuardian(guardian, status);
    }

    /**
     * @notice Set max voting power
     * @param maxVotingPower Max voting power for an account
     * @dev Only treasury multisig can invoke this function
     */
    function setMaxVotingPower(uint256 maxVotingPower) external onlyOwner {
        require(
            maxVotingPower > 0 && maxVotingPower <= 5_000_000_000e18,
            "Invalid max voting power"
        );
        MAX_VOTING_POWER = maxVotingPower;
    }

    /**
     * @notice Set account transferability status
     * @param account Account address
     * @param status Account status
     * @dev Only treasury multisig can invoke this function
     */
    function setAllowListStatus(
        address account,
        bool status
    ) external onlyOwner {
        _allowListStatus[account] = status;
        emit AllowListStatus(account, status);
    }

    /**
     * @notice Set excluded account voting power
     * @param account Account address
     * @param status Excluded status
     * @dev Only treasury multisig can invoke this function
     */
    function setExcludedAddress(
        address account,
        bool status
    ) external onlyOwner {
        _excludedVotingPower[account] = status;
    }

    /**
     * @notice Rescue accidental tokens that are stuck in the contract
     * @param recipient Treasury address
     * @param token Token address
     * @param value Value to rescue
     * @dev Only treasury multisig can invoke this function
     */
    function rescueTokens(
        address recipient,
        address token,
        uint256 value
    ) external onlyOwner {
        require(recipient != address(0), "recipient is address zero");
        require(value > 0, "value is zero");
        if (token == 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE) {
            uint256 balance = address(this).balance;
            uint256 ethValue = value > balance ? balance : value;
            (bool success, ) = payable(recipient).call{value: ethValue}("");
            require(success, "ETH transfer failed");
        } else {
            uint256 balanceOfToken = IERC20(token).balanceOf(address(this));
            uint256 erc20Value = value;
            if (value > balanceOfToken) {
                erc20Value = balanceOfToken;
            }
            IERC20(token).safeTransfer(recipient, erc20Value);
        }
    }

    /**
     * @notice Burn tokens from a contract that received allowance
     * @param account Account address to burn tokens from
     * @param value Amount of tokens to burn
     * @dev Only treasury multisig can invoke this function
     * @dev In a future upgrade if the token becomes transferable all restrictions will be removed
     */
    function burnFrom(
        address account,
        uint256 value
    ) public override onlyOwner {
        super.burnFrom(account, value);
    }

    /**
     * @notice Burn tokens from malicious accounts without requiring allowance
     * @param account Account address to burn tokens from
     * @param value Amount of tokens to burn
     * @dev Only treasury multisig can invoke this function
     * @dev In a future upgrade if the token becomes transferable all restrictions will be removed
     */
    function adminBurn(
        address account,
        uint256 value
    ) public onlyOwner {
        _burn(account, value);
    }

    /**
     * @notice Unpause the token transferability
     * @dev Only treasury multisig can invoke this function
     */
    function unPause() external onlyOwner {
        _unpause();
    }

    /**
     * @notice Pause token transferability
     * @dev Only treasury multisig and guardians can invoke this function
     * @dev In a future upgrade if the token becomes transferable all restrictions will be removed
     */
    function pause() external {
        require(
            _msgSender() == owner() || _guardians[_msgSender()],
            "Invalid multisig or guardian"
        );
        _pause();
    }

    /**
     * @notice Get account transferability status
     * @param sender Sender address
     */
    function getAllowListStatus(
        address sender
    ) external view returns (bool status) {
        return _allowListStatus[sender];
    }

    /**
     * @notice View authorized guardians
     * @param guardian Guardian address
     */
    function isGuardian(
        address guardian
    ) external view returns (bool guardianStatus) {
        return _guardians[guardian];
    }

    /**
     * @notice Check if contract voting power is excluded
     * @param account The address of the account
     */
    function isExcluded(
        address account
    ) external view returns (bool excludedStatus) {
        return _excludedVotingPower[account];
    }

    /**
     * @notice Balance of voting power of account
     * @param account Voter address
     * @return votingPower Total voting power of account
     */
    function balanceOfVotes(
        address account
    ) external view returns (uint256 votingPower) {
        if (_excludedVotingPower[account]) {
            return 0;
        }

        uint256 currentVotes = super.balanceOf(account);
        if (currentVotes > MAX_VOTING_POWER) {
            return MAX_VOTING_POWER;
        }
        return currentVotes;
    }

    /**
     * @notice Delegated voting power of account
     * @param account Delegated address
     * @return votingPower Delegated voting power
     */
    function getVotes(
        address account
    ) public view override returns (uint256 votingPower) {
        if (_excludedVotingPower[account]) {
            return 0;
        }

        uint256 currentVotes = super.getVotes(account);
        if (currentVotes > MAX_VOTING_POWER) {
            return MAX_VOTING_POWER;
        }
        return currentVotes;
    }

    /**
     * @notice ERC20Upgradeable approve function
     * @param spender Sender address
     * @param value Approval value
     * @dev In a future upgrade if the token becomes transferable all restrictions will be removed
     */
    function approve(
        address spender,
        uint256 value
    ) public virtual override returns (bool status) {
        require(_allowListStatus[_msgSender()], "Approval not allowed");
        return super.approve(spender, value);
    }

    /**
     * @notice ERC20Upgradeable transfer function
     * @param from From address
     * @param to Receiver address
     * @param value Transfer value
     * @dev In a future upgrade if the token becomes transferable all restrictions will be removed
     */
    function transferFrom(
        address from,
        address to,
        uint256 value
    ) public virtual override returns (bool status) {
        return super.transferFrom(from, to, value);
    }

    /**
     * @notice Burn WLFI tokens
     * @param value Value to burn
     * @dev In a future upgrade if the token becomes transferable all restrictions will be removed
     */
    function burn(uint256 value) public override {
        require(_allowListStatus[_msgSender()], "burner not allowed");
        super.burn(value);
    }

    /**
     * @notice Delegate voting power
     * @param delegatee Delegatee address
     * @dev In a future upgrade if the token becomes transferable all restrictions will be removed
     */
    function delegate(address delegatee) public override whenNotPaused {
        super.delegate(delegatee);
    }

    /**
     * @param from Sender address
     * @param to Receiver address
     * @param value Value to transfer
     * @dev In a future upgrade if the token becomes transferable all restrictions will be removed
     */
    function _update(
        address from,
        address to,
        uint256 value
    )
        internal
        virtual
        override(
            ERC20Upgradeable,
            ERC20VotesUpgradeable,
            ERC20PausableUpgradeable
        )
        whenNotPaused
    {
        require(
            _allowListStatus[_msgSender()] && _allowListStatus[from],
            "not in allowlist"
        );
        super._update(from, to, value);
    }

    uint256[50] private __gap; // reserve space for upgradeability storage slot
}
