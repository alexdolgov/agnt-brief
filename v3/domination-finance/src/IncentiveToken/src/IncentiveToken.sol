// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { ERC20Burnable } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import { Ownable, Ownable2Step } from "@openzeppelin/contracts/access/Ownable2Step.sol";

/// @title Token for the Domination Finance incentive campaign
contract IncentiveToken is ERC20Burnable, Ownable2Step {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         CONSTANTS                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice The lower bound frequency at which the incentive token distributor can mint tokens
    /// @dev This value should align with the internal distribution schedule
    /// @dev 8 hours
    uint256 public constant MIN_DISTRIBUTOR_MINT_FREQUENCY = 28_800;

    /// @notice The upper bound amount for minting tokens using the incentive token distributor
    uint256 public constant MAX_DISTRIBUTOR_MINT_AMOUNT = 50_000e18;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         VARIABLES                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Address of the incentive token distributor
    address public distributor;

    /// @notice The timestamp after which the incentive token distributor's mint budget starts to accrue
    uint256 public distributionMintStartTimestamp;

    /// @notice Total amount of tokens minted by the incentive token distributor
    uint256 public distributorMintedAmount;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           EVENTS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Emitted when the incentive token distributor address has been updated
    /// @param oldDistributor Address of the previous incentive token distributor
    /// @param newDistributor Address of the updated incentive token distributor
    event DistributorUpdated(address oldDistributor, address newDistributor);

    /// @notice Emitted when the distribution mint start timestamp has been set
    /// @param timestamp Distribution mint start timestamp
    event DistributionMintStartSet(uint256 timestamp);

    /// @notice Emitted when tokens have been minted for the incentive token distributor
    /// @param distributor Address of the incentive token distributor
    /// @param amount Amount of tokens minted for the incentive token distributor
    event TokensMintedForDistribution(address indexed distributor, uint256 amount);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           ERRORS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Thrown when attempting to set the incentive token distributor to a zero address or
    /// mint tokens to a zero address
    error ZeroAddress();

    /// @notice Thrown when attempting to set the incentive token distributor address to the current one
    error DistributorAlreadySet();

    /// @notice Thrown when attempting to set the distribution mint start timestamp after it has already been set
    error DistributionMintStartAlreadySet();

    /// @notice Thrown when attempting to set the distribution mint start timestamp to zero
    error DistributionMintStartZero();

    /// @notice Thrown when attempting to call a function reserved for only the incentive token distributor
    /// with an invalid address
    error OnlyDistributor();

    /// @notice Thrown when attempting to mint tokens for the incentive token distributor while the distribution
    /// mint start timestamp has not been set
    error DistributionMintStartNotSet();

    /// @notice Thrown when attempting to mint a zero amount of tokens for the incentive token distributor
    error DistributorMintAmountZero();

    /// @notice Thrown when attempting to mint more tokens for the incentive token distributor than the budget allows
    /// @param amount Attempted token mint amount
    /// @param budget Amount of tokens available in the budget
    error DistributorMintAmountExceedsBudget(uint256 amount, uint256 budget);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        CONSTRUCTOR                         */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Constructs the token contract
    /// @param name Token name
    /// @param symbol Token symbol
    /// @param initialOwner Address of the initial token contract owner
    constructor(string memory name, string memory symbol, address initialOwner)
        ERC20(name, symbol)
        Ownable(initialOwner)
    { }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   ADMIN SETTER FUNCTIONS                   */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Sets the incentive token distributor address
    /// @param newDistributor Address of the incentive token distributor to set
    function setDistributor(address newDistributor) external onlyOwner {
        if (newDistributor == address(0)) {
            revert ZeroAddress();
        }

        address oldDistributor = distributor;
        if (oldDistributor == newDistributor) {
            revert DistributorAlreadySet();
        }

        distributor = newDistributor;
        emit DistributorUpdated(oldDistributor, newDistributor);
    }

    /// @notice Sets the distribution mint start timestamp
    /// @dev A one time setter function is preferred over the constructor approach for flexibility
    /// @dev This can only be set once
    /// @param timestamp Distribution mint start timestamp
    function setDistributionMintStartTimestamp(uint256 timestamp) external onlyOwner {
        if (distributionMintStartTimestamp != 0) {
            revert DistributionMintStartAlreadySet();
        }

        if (timestamp == 0) {
            revert DistributionMintStartZero();
        }

        distributionMintStartTimestamp = timestamp;
        emit DistributionMintStartSet(timestamp);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                PERMISSIONED MINT FUNCTIONS                 */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Creates and subsequently transfers a given amount of tokens to the incentive token distributor
    /// @dev Only callable by the incentive token distributor
    /// @dev Blocks mints that do not respect the incentive token distributor budget
    /// @param amount Amount of tokens to create and transfer
    function mintTokensForDistribution(uint256 amount) external {
        if (msg.sender != distributor) {
            revert OnlyDistributor();
        }

        if (distributionMintStartTimestamp == 0) {
            revert DistributionMintStartNotSet();
        }

        if (amount == 0) {
            revert DistributorMintAmountZero();
        }

        uint256 available = availableDistributorMintBudget();
        if (amount > available) {
            revert DistributorMintAmountExceedsBudget(amount, available);
        }

        distributorMintedAmount += amount;
        _mint(distributor, amount);

        emit TokensMintedForDistribution(distributor, amount);
    }

    /// @notice Creates and subsequently transfers a given amount of tokens to a specified address
    /// @dev Only callable by the token contract owner
    /// @dev Mints to a zero address are blocked
    /// @param to Address receiving the freshly created tokens
    /// @param amount Amount of tokens to create and transfer
    function mint(address to, uint256 amount) public onlyOwner {
        if (to == address(0)) {
            revert ZeroAddress();
        }

        _mint(to, amount);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*         DISTRIBUTOR MINT BUDGET TRACKING FUNCTIONS         */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Returns the accrued distributor mint budget since the distribution mint start timestamp
    function accruedDistributorMintBudget() public view returns (uint256) {
        if (block.timestamp <= distributionMintStartTimestamp) {
            return 0;
        }

        uint256 elapsed = block.timestamp - distributionMintStartTimestamp;
        uint256 window = elapsed / MIN_DISTRIBUTOR_MINT_FREQUENCY;

        return window * MAX_DISTRIBUTOR_MINT_AMOUNT;
    }

    /// @notice Returns the available distributor mint budget after accounting for previous mints
    function availableDistributorMintBudget() public view returns (uint256) {
        uint256 accrued = accruedDistributorMintBudget();
        return accrued > distributorMintedAmount ? accrued - distributorMintedAmount : 0;
    }
}
