//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import "./interface/IVesting.sol";
import "./Base.sol";

/// @title SeMetis
/// @notice The SeMetis contract is an implementation of the ERC4626 vault. It allows users to deposit eMetis tokens in exchange for seMetis tokens, and vice versa. Additionally, it distributes locking rewards to seMetis token holders.
contract SeMetis is ERC4626Upgradeable, Base {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    event AssetsAdded(address indexed caller, uint256 assets);

    address public deployer;
    address public rewardDispatcher;
    address public eMetisMinter;
    uint256 public _totalAssets;

    function initialize(address _config) public initializer {
        address[] memory _holdTokens = new address[](1);
        _holdTokens[0] = IConfig(_config).eMetis();
        __Base_init(_config, _holdTokens);
        __ERC20_init("Staked ENKI Metis", "seMetis");
        __ERC4626_init(IERC20Upgradeable(config.eMetis()));
        deployer = _msgSender();
        rewardDispatcher = config.rewardDispatcher();
        eMetisMinter = config.eMetisMinter();
    }

    function depositFromEMetisMinter(uint256 assets, address receiver) internalOnly(eMetisMinter) public returns (uint256) {
        return super.deposit(assets, receiver);
    }

    function addAssets(uint256 assets) internalOnly(rewardDispatcher) external {
        IERC20Upgradeable asset = IERC20Upgradeable(asset());
        asset.safeTransferFrom(_msgSender(), address(this), assets);
        _totalAssets += assets;
        emit AssetsAdded(_msgSender(), assets);
    }

    /// @notice returns the total assets in the vault
    function totalAssets() public view virtual override returns (uint256) {
        return _totalAssets;
    }
    
    /// @notice withdraw eMetis from seMetis vault, user's seMetis will be burned
    /// @param caller caller of the function
    /// @param receiver receiver of eMetis
    /// @param owner owner of seMetis
    /// @param assets eMetis amount
    /// @param shares seMetis amount
    function _withdraw(
        address caller,
        address receiver,
        address owner,
        uint256 assets,
        uint256 shares
    ) internal override forUser {
        if (caller != owner) {
            _spendAllowance(owner, caller, shares);
        }

        require(owner != deployer || assets + INITIAL_DEPOSIT_AMOUNT <= maxWithdraw(deployer), "SeMetis: deployer should keep the initial deposit amount");

        _burn(owner, shares);

        address vesting = config.vesting();
        uint256 vestAmount = assets * config.vestingRatio() / FEE_PRECISION;
        uint256 withdrawAmount = assets - vestAmount;

        IERC20Upgradeable asset = IERC20Upgradeable(asset());
        asset.approve(vesting, vestAmount);
        IVesting(vesting).deposit(receiver, vestAmount);
        SafeERC20Upgradeable.safeTransfer(asset, receiver, withdrawAmount);
        _totalAssets -= assets;

        emit Withdraw(caller, receiver, owner, assets, shares);
    }

    /// @notice deposit eMetis to seMetis vault, user will get seMetis
    /// @param caller caller of the function
    /// @param receiver receiver of seMetis
    /// @param assets amount of eMetis
    /// @param shares amount of seMetis
    function _deposit(
        address caller,
        address receiver,
        uint256 assets,
        uint256 shares
    ) internal override forUser {
        super._deposit(caller, receiver, assets, shares);
        _totalAssets += assets;
        emit AssetsAdded(caller, assets);
    }

    /// @dev the deployer should keep the initial deposit amount
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal override virtual {
        require(from == address(0) || from != deployer || previewWithdraw(amount) + INITIAL_DEPOSIT_AMOUNT <= maxWithdraw(deployer), "SeMetis: deployer should keep the initial deposit amount");
    }
}
