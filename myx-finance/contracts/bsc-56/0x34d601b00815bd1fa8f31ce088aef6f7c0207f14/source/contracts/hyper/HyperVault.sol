// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

import "../interfaces/IHyperFactory.sol";
import "../interfaces/IHyperToken.sol";
import "../interfaces/IHyperVault.sol";
import "../libraries/Upgradeable.sol";

import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

contract HyperVault is IHyperVault, Upgradeable, ReentrancyGuardUpgradeable, PausableUpgradeable{
    using SafeERC20 for IERC20;
    using SafeMath for uint256;
    using EnumerableSet for EnumerableSet.AddressSet;

    address public hyperFactory;

    EnumerableSet.AddressSet private acceptableAssets;
    mapping(address => HyperPair) public hyperPairs;
    mapping(address => uint256) public hyperVaults;

    function initialize(
        IAddressesProvider addressProvider
    ) public initializer {
        ADDRESS_PROVIDER = addressProvider;
    }

    function updateHyperFactory(address _hyperFactory) external onlyPoolAdmin  {
        address oldAddress = hyperFactory;
        hyperFactory = _hyperFactory;
        emit UpdateHyperFactory(msg.sender, oldAddress, _hyperFactory);
    }

    function getAcceptableAssets() public view returns (address[] memory assets) {
        return acceptableAssets.values();
    }

    function getHyperPair(address token) external view returns (HyperPair memory) {
        return hyperPairs[token];
    }

    function addPair(address asset) external onlyPoolAdmin {
        require(asset != address(0), "!0");
        require(hyperPairs[asset].hyperToken == address(0), "ex");

        address hyperToken = IHyperFactory(hyperFactory).createHyperToken(asset);

        IHyperVault.HyperPair storage hyperPair = hyperPairs[asset];
        hyperPair.asset = asset;
        hyperPair.hyperToken = hyperToken;
        hyperPair.enable = true;

        acceptableAssets.add(asset);

        emit HyperPairAdded(asset, hyperToken);
    }

    function updatePairStatus(address asset, bool enable) external onlyPoolAdmin {
        IHyperVault.HyperPair storage hyperPair = hyperPairs[asset];
        require(hyperPair.hyperToken != address(0), "!ex");

        hyperPair.enable = enable;

        emit HyperPairStatusUpdated(asset, hyperPair.enable);
    }


    function deposit(address recipient, address asset, uint256 amount) external whenNotPaused nonReentrant {
        require(asset != address(0), "!0");
        require(amount > 0, "ia");

        IHyperVault.HyperPair memory hyperPair = hyperPairs[asset];
        require(hyperPair.enable && hyperPair.hyperToken != address(0), "disabled");

        IERC20 depositToken = IERC20(asset);
        uint256 balanceBefore = depositToken.balanceOf(address(this));

        depositToken.safeTransferFrom(msg.sender, address(this), amount);

        require(balanceBefore.add(amount) <= depositToken.balanceOf(address(this)), "te");

        hyperVaults[asset] = hyperVaults[asset].add(amount);
        IHyperToken(hyperPair.hyperToken).mint(recipient, amount);
        emit Deposit(msg.sender, recipient, asset, amount);
    }

    function withdraw(address recipient, address asset, uint256 amount) external whenNotPaused nonReentrant {
        require(asset != address(0), "!0");
        require(amount > 0, "ia");
        require(hyperVaults[asset] >= amount && IERC20(asset).balanceOf(address(this)) >= amount, "va");

        IHyperVault.HyperPair memory hyperPair = hyperPairs[asset];
        require(IERC20(hyperPair.hyperToken).balanceOf(msg.sender) >= amount, "ib");
        require(hyperPair.enable && hyperPair.hyperToken != address(0), "disabled");

        IERC20(hyperPair.hyperToken).safeTransferFrom(msg.sender, address(this), amount);
        IHyperToken(hyperPair.hyperToken).burn(amount);

        hyperVaults[asset] = hyperVaults[asset].sub(amount);
        IERC20(asset).safeTransfer(recipient, amount);
        emit Withdraw(msg.sender, recipient, asset, amount);
    }
}
