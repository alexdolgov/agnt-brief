//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "./interface/IEMetisMinter.sol";
import "./interface/IConfig.sol";
import "./interface/ICrossDomainMessenger.sol";
import "./interface/ISeMetis.sol";
import "./Base.sol";

/// @title RewardDispatcher
/// @notice RewardDispatcher is the contract that dispatches rewards
contract RewardDispatcher is Initializable, Base {
    using SafeERC20 for IERC20;

    IERC20 public eMetis;
    ISeMetis public seMetis;
    uint256 public treasuryBalance;

    /// @notice Dispatched is emitted when dispatch rewards
    /// @param amount amount of eMetis dispatched
    /// @param toTreasuryAmount amount of eMetis dispatched to protocol treasury
    /// @param toVaultAmount amount of eMetis dispatched to seMetis vault
    event Dispatched(uint256 amount, uint256 toTreasuryAmount, uint256 toVaultAmount);

    /// @notice initialize the contract
    /// @param _config config contract address
    function initialize(address _config) public initializer {
        address[] memory _holdTokens = new address[](1);
        _holdTokens[0] = IConfig(_config).eMetis();
        __Base_init(_config, _holdTokens);
        eMetis = IERC20(config.eMetis());
        seMetis = ISeMetis(config.seMetis());
    }

    /// @notice Dispatch rewards
    /// @dev dispatch holding eMetis to protocol treasury and seMetis vault, the ratio is configured in config contract
    function dispatch() external whenNotPaused nonReentrant onlyBackend {
        uint amount = eMetis.balanceOf(address(this));
        require(amount > 0, "RewardDispatcher: no reward");

        uint256 toTreasuryAmount = amount * config.protocolTreasuryRatio() / FEE_PRECISION;
        uint256 toVaultAmount = amount - toTreasuryAmount;

        treasuryBalance += toTreasuryAmount;
        eMetis.approve(address(seMetis), toVaultAmount);
        ISeMetis(seMetis).addAssets(toVaultAmount);

        emit Dispatched(amount, toTreasuryAmount, toVaultAmount);
    }

    function withdrawTreasury(uint256 amount, bool redeem) external onlyBackend {
        require(amount <= treasuryBalance, "RewardDispatcher: insufficient balance");
        treasuryBalance -= amount;

        if (redeem) {
            IEMetisMinter(config.eMetisMinter()).redeemToTreasury(amount);
        } else {
            eMetis.safeTransfer(config.protocolTreasury(), amount);
        }
    }
}
