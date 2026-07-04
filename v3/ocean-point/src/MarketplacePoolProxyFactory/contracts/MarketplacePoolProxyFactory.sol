// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "./MarketplacePoolProxy.sol";

contract MarketplacePoolProxyFactory is Ownable2Step {
    address private _implementation;
    address private _bstStakingContract;
    address private _rewardToken;
    address private _governanceWallet;
    mapping(address => address) private _CPWalletToMarketplacePool;

    event MarketplacePoolCreated(
        address indexed marketplacePoolAddress,
        address cpWallet,
        address bsWallet,
        string cpIdentifier,
        string cpUrl,
        string tokenName,
        string tokenSymbol
    );

    event ImplementationChanged(address newContract);
    event BSTStakingContractChanged(address newBSTStakingContract);
    event GovernanceWalletChanged(address newGovernanceWalletContract);

    /// @notice Initialization function
    /// @param implementation Address of logic contract for pools
    /// @param bstStakingContract Address of BST staking contract
    /// @param rewardToken Address of reward token contract
    /// @param governancePool Governance wallet
    constructor(
        address implementation,
        address bstStakingContract,
        address rewardToken,
        address governancePool
    ) {
        require(
            implementation != address(0) &&
                bstStakingContract != address(0) &&
                rewardToken != address(0) &&
                governancePool != address(0),
            "MarketplacePoolProxyFactory: Address must not be zero"
        );
        _implementation = implementation;
        _bstStakingContract = bstStakingContract;
        _rewardToken = rewardToken;
        _governanceWallet = governancePool;
    }

    /// @notice Creates new marketplace pool
    /// @param cpWallet Certified partner's wallet
    /// @param cpName Certified partner's name
    /// @param cpUrl Certified partner's website
    /// @param bsWallet Blocksquare wallet
    /// @param tokenName Pool token name
    /// @param tokenSymbol Pool token symbol
    function createMarketplacePool(
        address cpWallet,
        string memory cpName,
        string memory cpUrl,
        address bsWallet,
        string memory tokenName,
        string memory tokenSymbol
    ) external onlyOwner returns (address) {
        require(
            cpWallet != address(0) && bsWallet != address(0),
            "MarketplacePoolProxyFactory: Address must not be zero"
        );
        MarketplacePoolProxy proxy = new MarketplacePoolProxy(
            address(this),
            _implementation,
            abi.encodeWithSelector(
                bytes4(
                    keccak256(
                        bytes(
                            "initialize(address,address,address,address,address,address,string,string)"
                        )
                    )
                ),
                cpWallet,
                bsWallet,
                address(this),
                _rewardToken,
                _bstStakingContract,
                _governanceWallet,
                tokenName,
                tokenSymbol
            )
        );
        _CPWalletToMarketplacePool[cpWallet] = address(proxy);
        emit MarketplacePoolCreated(
            address(proxy),
            cpWallet,
            bsWallet,
            cpName,
            cpUrl,
            tokenName,
            tokenSymbol
        );
        return address(proxy);
    }

    /// @notice Change pool logic contract
    /// @dev Upgrades should only fix bugs in existing logic (not add new variables or functions)
    /// @param newImplementation Contract address of new logic
    function changeImplementation(address newImplementation)
        external
        onlyOwner
    {
        require(
            newImplementation != address(0),
            "MarketplacePoolProxyFactory: Address must not be zero"
        );
        _implementation = newImplementation;
        emit ImplementationChanged(newImplementation);
    }

    /// @notice Change BST staking contract
    /// @dev New BST staking contract address will only apply to new pools
    /// @param newBSTStakingContract Contract address of new BST staking contract
    function changeBSTStakingContract(address newBSTStakingContract)
        external
        onlyOwner
    {
        require(
            newBSTStakingContract != address(0),
            "MarketplacePoolProxyFactory: Address must not be zero"
        );
        _bstStakingContract = newBSTStakingContract;
        emit BSTStakingContractChanged(newBSTStakingContract);
    }

    /// @notice Change governance wallet
    /// @dev New governance wallet will only apply to new pools
    /// @param governanceWallet Wallet address of new governance wallet
    function changeGovernanceWallet(address governanceWallet)
        external
        onlyOwner
    {
        require(
            governanceWallet != address(0),
            "MarketplacePoolProxyFactory: Address must not be zero"
        );
        _governanceWallet = governanceWallet;
        emit GovernanceWalletChanged(governanceWallet);
    }

    /// @notice Returns address of current logic contract
    /// @return Address of current logic contract
    function getImplementation() external view returns (address) {
        return _implementation;
    }

    /// @notice Returns address of current BST staking contract
    /// @return Address of current BST staking contract
    function getBSTStakingContract() external view returns (address) {
        return _bstStakingContract;
    }

    /// @notice Returns address of pool contract for certified partner
    /// @param cpWallet Wallet of certified partner
    /// @return Address of pool contrat
    function getMarketplacePoolOfCPWallet(address cpWallet)
        external
        view
        returns (address)
    {
        return _CPWalletToMarketplacePool[cpWallet];
    }

    /// @notice Returns address of reward token contract
    /// @return Address of reward token contract
    function getRewardTokenAddress() external view returns (address) {
        return _rewardToken;
    }

    /// @notice Returns address of governance wallet
    /// @return Address of governance wallet
    function getGovernanceWallet() external view returns (address) {
        return _governanceWallet;
    }
}
