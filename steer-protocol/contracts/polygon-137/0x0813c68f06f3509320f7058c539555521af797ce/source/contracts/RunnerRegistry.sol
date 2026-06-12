// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.12;

import "./KeeperRegistry.sol";

// ERC20
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

// Proxy Support
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract RunnerRegistry is Initializable, UUPSUpgradeable, OwnableUpgradeable {
    // Runner info
    mapping(address => uint256) public runners;

    // Bonds
    uint256 public bondAmount; // Amount of bondcoin needed to qualify as a keeper
    IERC20 public bondToken; // Address of ERC20 used as bond
    uint256 public freeCoin; // Amount of bondcoin no longer affiliated with any runner (due to slashing etc.)

    // Slashing
    KeeperRegistry public keeperRegistry;

    event RunnerAmountChanged(address indexed runner, int256 amount);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer() {}

    function initialize(
        address _keeperRegistry,
        uint256 _bondAmount,
        address _bondToken
    ) public initializer {
        __UUPSUpgradeable_init();
        __Ownable_init();
        keeperRegistry = KeeperRegistry(_keeperRegistry);
        bondAmount = _bondAmount;
        bondToken = IERC20(_bondToken);
    }

    /// @dev Check whether an address is runner or not.
    /// @param _runner is the address that needs to be checked.
    /// @return True if address is a runner ,if not returns false.
    function isRunner(address _runner) external view returns (bool) {
        return runners[_runner] >= bondAmount;
    }

    /// @dev Used to bond as a runner
    /// @param _amount is the amount of tokens that will be locked as bond amount.
    function bond(uint256 _amount) external {
        // Make sure the minimum bond is always met
        // if it is met, then allow any amount to be sent
        uint256 currentBonded = runners[msg.sender];
        require(
            currentBonded + _amount >= bondAmount,
            "Bonded amount must be above the minimum"
        );

        // Record the total amount the runner has deposited
        runners[msg.sender] = currentBonded + _amount;

        emit RunnerAmountChanged(msg.sender, int256(_amount));
        // Transfer the bond amount to the registry
        bondToken.transferFrom(msg.sender, address(this), _amount);
    }

    /// @dev Used to unbond as a runner and get the bonded tokens back.
    /// @param _amount is the amount of tokens that will be unlocked from bond amount.
    function unbond(uint256 _amount) external {
        runners[msg.sender] -= _amount;

        emit RunnerAmountChanged(msg.sender, int256(_amount) * -1);
        bondToken.transfer(msg.sender, _amount);
    }

    /// @dev Used to slash runners if they do a bad/malicious job.
    /// Only keepers can slash runners.
    /// @param _runner is the address of the runner who should be slashed.
    /// @param _amount is the amount which should be slashed from the runner's bond amount.
    function slash(address _runner, uint256 _amount) external {
        keeperRegistry.checkLicense(msg.sender);
        runners[_runner] -= _amount;
        freeCoin += _amount;
        emit RunnerAmountChanged(msg.sender, int256(_amount) * -1);
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}

    /// @dev Used to withdraw the tokens that were slashed from runners doing a bad/malicious job.
    /// Can only be called by the owner of this contract.
    /// @param _amount is the amount of tokens that needs to be withdrawn.
    function withdrawFreeCoin(uint256 _amount) external onlyOwner {
        freeCoin -= _amount;
        bondToken.transfer(msg.sender, _amount);
    }
}
