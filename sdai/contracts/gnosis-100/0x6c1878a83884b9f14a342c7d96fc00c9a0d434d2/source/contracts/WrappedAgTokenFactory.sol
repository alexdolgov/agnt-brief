// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.19;

import "./WrappedAgTokenProxy.sol";
import "./WrappedAgTokenUpgradeable.sol";
import "./interfaces/IAgaveProtocolDataProvider.sol";
import "./interfaces/ICoordinator.sol";

/// @title Wrapped AgToken factory
/// @notice Deploys WrappedAgTokens and manages ownership and control over the interest collection.
contract WrappedAgTokenFactory {
    address public Collector;
    address public Governance;
    address public immutable Provider;
    address public Swapper;
    address public Implementation;

    mapping(address agTokenAddress => address wrappedAgToken) public wrapped;

    /// @notice Emitted when the Governance of the factory is changed
    /// @param newGovernance The Governance after the Governance was changed
    event GovernanceChanged(address indexed newGovernance);

    /// @notice Emitted when the Collector of the factory is changed
    /// @param newCollector The Collector after the Collector was changed
    event CollectorChanged(address indexed newCollector);

    /// @notice Emitted when the Swapper of the factory is changed
    /// @param newSwapper The Swapper after the Swapper was changed
    event SwapperChanged(address indexed newSwapper);

    /// @notice Emitted when the Implementation of the factory is changed
    /// @param newImplementation The Implementation after the Implementation was changed
    event ImplementationChanged(address indexed newImplementation);

    /// @notice Emitted when a new wrapper is created
    /// @param wrappedAgToken The address of the created wrapper
    /// @param name The name of the wrapper
    /// @param symbol The symbol of the wrapper
    /// @param decimals The decimals of the wrapper
    /// @param agToken The address of the agToken being wrapped
    event WrappedAgTokenCreated(address wrappedAgToken, string name, string symbol, uint8 decimals, address agToken);

    constructor(address dataProvider, address governanceAddress, address collectorAddress) {
        Provider = dataProvider;
        Governance = governanceAddress;
        Collector = collectorAddress;
    }

    modifier isGovernance() {
        require(msg.sender == Governance, "UNAUTHORIZED");
        _;
    }

    /// @dev Deploys a wrapper with the given parameters
    /// @param name The name of the wrapper
    /// @param symbol The symbol of the wrapper
    /// @param decimals The decimals of the wrapper
    /// @param agTokenAddress The address of the agToken being wrapped
    function deploy(string memory name, string memory symbol, uint8 decimals, address agTokenAddress)
        internal
        returns (address newToken)
    {
        newToken = address(
            new WrappedAgTokenProxy{
                salt: keccak256(abi.encode(agTokenAddress, address(this)))
            }()
        );
        WrappedAgTokenUpgradeable(payable(newToken)).initialize(
            name, symbol, decimals, agTokenAddress, Collector, Governance
        );
        wrapped[agTokenAddress] = newToken;
        emit WrappedAgTokenCreated(newToken, name, symbol, decimals, agTokenAddress);
        return newToken;
    }

    function getAllATokens() external view returns (TokenData[] memory) {
        return IAgaveProtocolDataProvider(Provider).getAllATokens();
    }

    function deployWrappedAgTokens(address[] calldata agTokens)
        external
        isGovernance
    {
        for (uint256 i; i < agTokens.length;) {
            address assetAddress = agTokens[i];
            if (wrapped[assetAddress] != address(0)) {
                unchecked {
                    ++i;
                }
                continue;
            }
            WrappedAgTokenUpgradeable asset = WrappedAgTokenUpgradeable(payable(assetAddress));
            string memory assetName = string.concat("Wrapped ", asset.name());
            string memory assetSymbol = string.concat("w", asset.symbol());
            uint8 assetDecimals = asset.decimals();
            deploy(assetName, assetSymbol, assetDecimals, assetAddress);

            unchecked {
                ++i;
            }
        }
    }

    function setNewGovernance(address governanceAddress) external isGovernance {
        Governance = governanceAddress;
        emit GovernanceChanged(governanceAddress);
    }

    function setNewCollector(address collectorAddress) external isGovernance {
        Collector = collectorAddress;
        emit CollectorChanged(collectorAddress);
    }

		/// @notice Call this after deploying the WrappedAgToken proxies
    function setNewSwapper(address swapperAddress) external isGovernance {
        Swapper = swapperAddress;

        TokenData[] memory agTokens = IAgaveProtocolDataProvider(Provider).getAllATokens();
        for (uint256 i; i < agTokens.length;) {
            address assetAddress = agTokens[i].tokenAddress;
            if (wrapped[assetAddress] != address(0)) {
                ICoordinator(Swapper).addWagToken(assetAddress, wrapped[assetAddress]);
								WrappedAgTokenUpgradeable(payable(wrapped[agTokens[i].tokenAddress])).setConditionalSwapper(Swapper);
            }
            unchecked {
                ++i;
            }
        }

        emit SwapperChanged(swapperAddress);
    }

    function setNewImplementation(address implementationAddress) external isGovernance {
        Implementation = implementationAddress;
        emit ImplementationChanged(implementationAddress);
    }

    function delegateNewManager(address newManager) external isGovernance {
        TokenData[] memory agTokens = IAgaveProtocolDataProvider(Provider).getAllATokens();
        for (uint256 i = 0; i < agTokens.length; i++) {
            if(wrapped[agTokens[i].tokenAddress] != address(0)) {
								WrappedAgTokenUpgradeable(payable(wrapped[agTokens[i].tokenAddress])).setManager(newManager);
						}
        }
    }

    function delegateNewCollector(address newCollector) external isGovernance {
        TokenData[] memory agTokens = IAgaveProtocolDataProvider(Provider).getAllATokens();
        for (uint256 i = 0; i < agTokens.length; i++) {
            if (wrapped[agTokens[i].tokenAddress] != address(0)) {
                WrappedAgTokenUpgradeable(payable(wrapped[agTokens[i].tokenAddress])).setInterestCollector(newCollector);
            }
        }
    }

    receive() external payable {
        revert("Contract can only handle ERC20 tokens");
    }
}
