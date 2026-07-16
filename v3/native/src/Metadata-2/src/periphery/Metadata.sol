// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";

contract Metadata is Ownable2Step {
    struct PositionLimits {
        /// @notice Hard limit for trader's credit in USD
        uint256 hardLimitUsd;
        /// @notice Liquidation threshold in basis points
        uint256 liquidationThresholdBps;
    }

    /// @notice Struct for tracking trader nonce updates
    /// @param nonce The latest nonce used by the trader for Credit Vault operations
    /// @param lastUpdateTimestamp The timestamp when the nonce was last updated
    struct TraderNonce {
        uint256 nonce;
        uint256 lastUpdateTimestamp;
    }

    struct ChainMetadata {
        /// @notice List of RPC URLs for the chain
        /// @dev Used for connecting to the blockchain network
        string[] rpcUrls;
        /// @notice Array of token contract addresses supported on this chain
        /// @dev Addresses of the main tokens that can be traded/used as collateral
        address[] underlyingTokens;
        /// @notice Array of liquidity pool token addresses
        /// @dev Addresses of LP tokens associated with the supported pools
        address[] lpTokens;
        /// @notice Array of valid deposit token addresses
        address[] depositAddresses;
        /// @notice Array of price feed identifiers
        /// @dev Used for oracle price feeds to get token prices
        string[] priceIds;
        /// @notice Array of token decimals
        /// @dev Decimal places for each supported token
        uint8[] decimals;
        /// @notice Array of collateral factors in basis points
        /// @dev Determines how much can be borrowed against each token (1 bips = 0.01%)
        uint16[] collateralFactors;
        /// @notice Address of the Credit Vault contract
        /// @dev Main vault contract that handles asset management
        address creditVault;
        /// @notice Address of the Native RFQ (Request for Quote) Pool
        /// @dev Contract handling RFQ-based trading operations
        address RFQPool;
        /// @notice Address of the multicall contract
        /// @dev Used for batching multiple calls in a single transaction
        address multicall;
        /// @notice Address of the bridge contract
        /// @dev Handles cross-chain token transfers and communications
        address bridge;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                     STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Flag indicating whether TVL monitoring is paused
    bool public tvlMonitorPaused;

    /// @notice Address that receives protocol widget fees
    address public feeRecipient;

    /// @notice Address authorized to execute onlyExecutor operations
    address public executor;

    /// @notice Address authorized to pause/unpause TVL monitoring
    address public tvlMonitorPauser;

    /// @notice Default quote deviation limit in basis points (1 bips = 0.01%)
    /// @dev Used when no specific limit is set for a token, default is 500 (5%)
    uint256 public constant DEFAULT_QUOTE_DEVIATION_LIMIT = 500;

    /// @notice Maximum allowed quote deviation limit in basis points (1 bips = 0.01%)
    /// @dev Upper bound for quote deviation limits to handle volatile alt tokens, default is 10000 (100%)
    uint256 public maxQuoteDeviationLimit = 10_000;

    /// @notice Credit buffer amount for trusted market makers
    /// @dev Reserved credit line for trusted market makers, default is 100,000
    uint256 public creditBufferForTrustedMM = 100_000;

    /// @notice Epoch update change limit in basis points
    /// @dev Controls maximum allowed change within each epoch, default is 100 (1%)
    uint256 public epochUpdateChangeLimitBips = 100;

    /// @notice Minimum cooldown time required between nonce updates (in seconds)
    /// @dev Default is 10 minutes (600 seconds)
    uint256 public nonceCooldown = 600;

    /// @notice Global PNL threshold in USD for all traders combined
    uint256 public globalPnlThreshold;

    /// @notice Array of supported chain IDs
    /// @dev Stores the list of blockchain networks that are integrated with the protocol
    uint256[] public chainIds;

    /// @notice Array of trusted contract addresses
    address[] public trustedContracts;

    /// @notice Array of trader addresses
    address[] public traders;

    /// @notice Array of PNL whitelist addresses
    address[] public pnlWhitelist;

    /// @notice Mapping from chain ID to its corresponding metadata
    mapping(uint256 => ChainMetadata) public chainMetadata;

    /// @notice Token address => Quote deviation limit in basis points
    mapping(address => uint256) public quoteDeviationLimitBips;

    /// @notice Token address => CEX symbol (e.g., "BTC", "ETH", "USDC")
    mapping(address => string) public symbols;

    /// @notice Trader address => Position limits (hard limit and liquidation threshold)
    mapping(address => PositionLimits) public positionLimits;

    /// @notice Mapping from trader address to their nonce information
    /// @dev Tracks the latest nonce and timestamp for each trader's Credit Vault operations
    mapping(address => TraderNonce) public traderNonces;

    /// @notice Mapping from contract address to trusted status
    mapping(address => bool) public isTrustedContract;

    /// @notice Mapping from trader address to approved status
    mapping(address => bool) public isTrader;

    /// @notice Mapping from address to PNL whitelist status
    mapping(address => bool) public isPnlWhitelisted;

    /// @notice Mapping from chain ID and version to router contract address
    mapping(uint256 => mapping(uint8 => address)) public routers;

    /// @notice Mapping from trader address to PNL threshold in USD
    mapping(address => uint256) public traderPnlThresholds;

    /*//////////////////////////////////////////////////////////////////////////
                                     ERRORS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Thrown when a zero address is provided where a valid address is required
    error ZeroAddress();

    /// @notice Thrown when attempting to perform an operation on an invalid trader
    error InvalidTrader();

    /*//////////////////////////////////////////////////////////////////////////
                                        EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Emitted when credit buffer for trusted MM is changed
    /// @param oldBuffer The previous credit buffer amount
    /// @param newBuffer The new credit buffer amount
    event CreditBufferUpdated(uint256 oldBuffer, uint256 newBuffer);

    /// @notice Emitted when epoch update change limit is changed
    /// @param oldLimit The previous change limit in basis points
    /// @param newLimit The new change limit in basis points
    event EpochUpdateChangeLimitUpdated(uint256 oldLimit, uint256 newLimit);

    /// @notice Emitted when fee recipient address is changed
    /// @param oldRecipient The previous fee recipient address
    /// @param newRecipient The new fee recipient address
    event FeeRecipientUpdated(address indexed oldRecipient, address indexed newRecipient);

    /// @notice Emitted when executor address is changed
    /// @param oldExecutor The previous executor address
    /// @param newExecutor The new executor address
    event ExecutorUpdated(address indexed oldExecutor, address indexed newExecutor);

    /// @notice Emitted when TVL monitor pauser address is changed
    /// @param oldPauser The previous TVL monitor pauser address
    /// @param newPauser The new TVL monitor pauser address
    event TvlMonitorPauserUpdated(address indexed oldPauser, address indexed newPauser);

    /// @notice Emitted when TVL monitor paused status is changed
    /// @param paused The new paused status
    event TvlMonitorPausedUpdated(bool paused);

    /// @notice Emitted when trader nonce information is updated
    /// @param trader The address of the trader
    /// @param nonce The new nonce value
    /// @param timestamp The timestamp when the update occurred
    event TraderNonceUpdated(address indexed trader, uint256 nonce, uint256 timestamp);

    /// @notice Emitted when nonce cooldown is changed
    /// @param oldCooldown The previous cooldown time
    /// @param newCooldown The new cooldown time
    event NonceCooldownUpdated(uint256 oldCooldown, uint256 newCooldown);

    /// @notice Emitted when max quote deviation limit is changed
    /// @param oldLimit The previous max limit
    /// @param newLimit The new max limit
    event MaxQuoteDeviationLimitUpdated(uint256 oldLimit, uint256 newLimit);

    /// @notice Emitted when CEX symbols are updated for tokens
    /// @param tokenAddresses Array of token addresses
    /// @param symbols Array of CEX symbols
    event SymbolsUpdated(address[] indexed tokenAddresses, string[] symbols);

    /// @notice Emitted when position limits are updated for traders
    /// @param traders Array of trader addresses
    /// @param limits Array of position limits
    event PositionLimitsUpdated(address[] indexed traders, PositionLimits[] limits);

    /// @notice Emitted when trusted contracts are added
    /// @param contracts Array of trusted contract addresses that were added
    event TrustedContractsAdded(address[] indexed contracts);

    /// @notice Emitted when a trusted contract is removed
    /// @param contractAddress The address of the contract that was removed
    event TrustedContractRemoved(address indexed contractAddress);

    /// @notice Emitted when traders are added
    /// @param traders Array of trader addresses that were added
    event TradersAdded(address[] indexed traders);

    /// @notice Emitted when a trader is removed
    /// @param traderAddress The address of the trader that was removed
    event TraderRemoved(address indexed traderAddress);

    /// @notice Emitted when PNL whitelist addresses are added
    /// @param addresses Array of addresses that were added to the PNL whitelist
    event PnlWhitelistAdded(address[] indexed addresses);

    /// @notice Emitted when a PNL whitelist address is removed
    /// @param address_ The address that was removed from the PNL whitelist
    event PnlWhitelistRemoved(address indexed address_);

    /// @notice Emitted when router addresses are added
    /// @param chainIds Array of chain IDs where routers were added
    /// @param versions Array of versions for each router
    /// @param addresses Array of router contract addresses
    event RoutersAdded(uint256[] indexed chainIds, uint8[] versions, address[] addresses);

    /// @notice Emitted when router addresses are removed
    /// @param chainIds Array of chain IDs where routers were removed
    /// @param versions Array of versions for each router
    /// @param addresses Array of router contract addresses that were removed
    event RoutersRemoved(uint256[] indexed chainIds, uint8[] versions, address[] addresses);

    /// @notice Emitted when PNL thresholds are updated for traders
    /// @param traders Array of trader addresses
    /// @param thresholds Array of PNL thresholds in USD
    event PnlThresholdsUpdated(address[] indexed traders, uint256[] thresholds);

    /// @notice Emitted when global PNL threshold is updated
    /// @param oldThreshold The previous global PNL threshold
    /// @param newThreshold The new global PNL threshold
    event GlobalPnlThresholdUpdated(uint256 oldThreshold, uint256 newThreshold);

    /// @notice Updates trader nonce information
    /// @param trader The address of the trader
    /// @param nonce The new nonce value
    function updateTraderNonce(address trader, uint256 nonce) external {
        require(msg.sender == executor, "only executor");

        TraderNonce storage info = traderNonces[trader];

        // Check if sufficient time has passed since last update
        require(block.timestamp >= info.lastUpdateTimestamp + nonceCooldown, "update too frequent");

        // Update nonce and timestamp
        info.nonce = nonce;
        info.lastUpdateTimestamp = block.timestamp;

        emit TraderNonceUpdated(trader, nonce, block.timestamp);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                        SET GLOBAL PARAMS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Updates the credit buffer amount for trusted market makers
    /// @param value New credit buffer amount
    /// @dev Sets the reserved credit line amount for trusted market makers
    function setCreditBufferForTrustedMM(uint256 value) external onlyOwner {
        uint256 oldBuffer = creditBufferForTrustedMM;
        creditBufferForTrustedMM = value;

        emit CreditBufferUpdated(oldBuffer, value);
    }

    /// @notice Updates the epoch update change limit
    /// @param value New change limit in basis points (1 bips = 0.01%)
    /// @dev Controls the maximum allowed change within each epoch period
    function setEpochUpdateChangeLimitBips(uint256 value) external onlyOwner {
        uint256 oldLimit = epochUpdateChangeLimitBips;
        epochUpdateChangeLimitBips = value;

        emit EpochUpdateChangeLimitUpdated(oldLimit, value);
    }

    /// @notice Sets the fee recipient address
    /// @param _feeRecipient Address that will receive protocol fees
    function setFeeRecipient(address _feeRecipient) external onlyOwner {
        require(_feeRecipient != address(0), ZeroAddress());

        address oldRecipient = feeRecipient;
        feeRecipient = _feeRecipient;

        emit FeeRecipientUpdated(oldRecipient, _feeRecipient);
    }

    /// @notice Sets the executor address
    /// @param _executor The new executor address
    function setExecutor(address _executor) external onlyOwner {
        require(_executor != address(0), ZeroAddress());

        address oldExecutor = executor;
        executor = _executor;

        emit ExecutorUpdated(oldExecutor, _executor);
    }

    /// @notice Sets the TVL monitor pauser address
    /// @param _tvlMonitorPauser The new TVL monitor pauser address
    function setTvlMonitorPauser(address _tvlMonitorPauser) external onlyOwner {
        // Zero address is allowed; when set to zero, only owner can pause/unpause

        address oldPauser = tvlMonitorPauser;
        tvlMonitorPauser = _tvlMonitorPauser;

        emit TvlMonitorPauserUpdated(oldPauser, _tvlMonitorPauser);
    }

    /// @notice Sets the TVL monitor paused status
    /// @param _paused The new paused status
    /// @dev Can be called by owner or tvlMonitorPauser
    function setTvlMonitorPaused(bool _paused) external {
        require(msg.sender == owner() || msg.sender == tvlMonitorPauser, "only owner or pauser");

        tvlMonitorPaused = _paused;

        emit TvlMonitorPausedUpdated(_paused);
    }

    /// @notice Sets the minimum cooldown time required between nonce updates
    /// @param _nonceCooldown The new cooldown time in seconds
    function setNonceCooldown(uint256 _nonceCooldown) external onlyOwner {
        require(_nonceCooldown >= 300, "cooldown must be at least 5 minutes");

        uint256 oldCooldown = nonceCooldown;
        nonceCooldown = _nonceCooldown;

        emit NonceCooldownUpdated(oldCooldown, _nonceCooldown);
    }

    /// @notice Sets the maximum allowed quote deviation limit
    /// @param _maxQuoteDeviationLimit The new maximum limit in basis points
    function setMaxQuoteDeviationLimit(uint256 _maxQuoteDeviationLimit) external onlyOwner {
        require(_maxQuoteDeviationLimit >= DEFAULT_QUOTE_DEVIATION_LIMIT, "max limit must be at least default limit");

        uint256 oldLimit = maxQuoteDeviationLimit;
        maxQuoteDeviationLimit = _maxQuoteDeviationLimit;

        emit MaxQuoteDeviationLimitUpdated(oldLimit, _maxQuoteDeviationLimit);
    }

    /// @notice Sets CEX symbols for multiple token addresses
    /// @param tokenAddresses Array of token addresses
    /// @param _symbols Array of CEX symbols corresponding to each token address
    function setSymbols(address[] calldata tokenAddresses, string[] calldata _symbols) external onlyOwner {
        for (uint256 i = 0; i < tokenAddresses.length; i++) {
            symbols[tokenAddresses[i]] = _symbols[i];
        }

        emit SymbolsUpdated(tokenAddresses, _symbols);
    }

    /// @notice Sets position limits for traders
    /// @param traders_ Array of trader addresses
    /// @param limits Array of position limits for each trader
    function setPositionLimits(address[] calldata traders_, PositionLimits[] calldata limits) external onlyOwner {
        for (uint256 i = 0; i < traders_.length; i++) {
            require(isTrader[traders_[i]], InvalidTrader());
            require(limits[i].liquidationThresholdBps <= 10_000, "liquidation threshold exceeds maximum");

            positionLimits[traders_[i]] = limits[i];
        }

        emit PositionLimitsUpdated(traders_, limits);
    }

    /// @notice Adds multiple trusted contract addresses
    /// @param addresses Array of contract addresses to add as trusted
    function addTrustedContracts(address[] calldata addresses) external onlyOwner {
        for (uint256 i = 0; i < addresses.length; i++) {
            require(addresses[i] != address(0), ZeroAddress());
            require(!isTrustedContract[addresses[i]], "contract already trusted");

            trustedContracts.push(addresses[i]);
            isTrustedContract[addresses[i]] = true;
        }

        emit TrustedContractsAdded(addresses);
    }

    /// @notice Removes a trusted contract address by index with address verification
    /// @param index The index of the contract to remove from the trustedContracts array
    /// @param contractAddress The expected contract address at the given index for verification
    function removeTrustedContract(uint256 index, address contractAddress) external onlyOwner {
        address contractAtIndex = trustedContracts[index];
        require(contractAtIndex == contractAddress, "address mismatch at index");

        // Remove from mapping first
        isTrustedContract[contractAddress] = false;

        trustedContracts[index] = trustedContracts[trustedContracts.length - 1];
        trustedContracts.pop();

        emit TrustedContractRemoved(contractAddress);
    }

    /// @notice Adds multiple trader addresses
    /// @param addresses Array of trader addresses to add
    function addTraders(address[] calldata addresses) external onlyOwner {
        for (uint256 i = 0; i < addresses.length; i++) {
            require(addresses[i] != address(0), ZeroAddress());
            require(!isTrader[addresses[i]], "trader already added");

            traders.push(addresses[i]);
            isTrader[addresses[i]] = true;
        }

        emit TradersAdded(addresses);
    }

    /// @notice Removes a trader address by index with address verification
    /// @param index The index of the trader to remove from the traders array
    /// @param traderAddress The expected trader address at the given index for verification
    function removeTrader(uint256 index, address traderAddress) external onlyOwner {
        address traderAtIndex = traders[index];
        require(traderAtIndex == traderAddress, "address mismatch at index");

        // Remove from mapping first
        isTrader[traderAddress] = false;

        traders[index] = traders[traders.length - 1];
        traders.pop();

        emit TraderRemoved(traderAddress);
    }

    /// @notice Adds multiple addresses to the PNL whitelist
    /// @param addresses Array of addresses to add to the PNL whitelist
    /// @dev Addresses in the whitelist will have their PNL changes excluded from backend monitoring
    function addPnlWhitelistAddresses(address[] calldata addresses) external onlyOwner {
        for (uint256 i = 0; i < addresses.length; i++) {
            require(addresses[i] != address(0), ZeroAddress());
            require(!isPnlWhitelisted[addresses[i]], "address already whitelisted");

            pnlWhitelist.push(addresses[i]);
            isPnlWhitelisted[addresses[i]] = true;
        }

        emit PnlWhitelistAdded(addresses);
    }

    /// @notice Removes a PNL whitelist address by index with address verification
    /// @param index The index of the address to remove from the pnlWhitelist array
    /// @param address_ The expected address at the given index for verification
    function removePnlWhitelistAddress(uint256 index, address address_) external onlyOwner {
        address addressAtIndex = pnlWhitelist[index];
        require(addressAtIndex == address_, "address mismatch at index");

        // Remove from mapping first
        isPnlWhitelisted[address_] = false;

        pnlWhitelist[index] = pnlWhitelist[pnlWhitelist.length - 1];
        pnlWhitelist.pop();

        emit PnlWhitelistRemoved(address_);
    }

    /// @notice Adds multiple router addresses for different chains and versions
    /// @param chainIds_ Array of chain IDs where routers deployed
    /// @param versions Array of version numbers for each router
    /// @param addresses Array of router contract addresses
    function addRouters(
        uint256[] calldata chainIds_,
        uint8[] calldata versions,
        address[] calldata addresses
    ) external onlyOwner {
        for (uint256 i = 0; i < chainIds_.length; i++) {
            require(addresses[i] != address(0), ZeroAddress());
            require(routers[chainIds_[i]][versions[i]] == address(0), "router already exists");

            routers[chainIds_[i]][versions[i]] = addresses[i];
        }

        emit RoutersAdded(chainIds_, versions, addresses);
    }

    /// @notice Removes multiple router addresses for different chains and versions
    /// @param chainIds_ Array of chain IDs where routers removed
    /// @param versions Array of version numbers for each router to remove
    function removeRouters(uint256[] calldata chainIds_, uint8[] calldata versions) external onlyOwner {
        address[] memory removedAddresses = new address[](chainIds_.length);

        for (uint256 i = 0; i < chainIds_.length; i++) {
            address routerAddress = routers[chainIds_[i]][versions[i]];
            require(routerAddress != address(0), "router does not exist");

            removedAddresses[i] = routerAddress;
            delete routers[chainIds_[i]][versions[i]];
        }

        emit RoutersRemoved(chainIds_, versions, removedAddresses);
    }

    /// @notice Sets PNL thresholds for multiple traders
    /// @param traders_ Array of trader addresses
    /// @param thresholds Array of PNL thresholds in USD for each trader
    function setPnlThresholds(address[] calldata traders_, uint256[] calldata thresholds) external onlyOwner {
        for (uint256 i = 0; i < traders_.length; i++) {
            require(isTrader[traders_[i]], InvalidTrader());

            traderPnlThresholds[traders_[i]] = thresholds[i];
        }

        emit PnlThresholdsUpdated(traders_, thresholds);
    }

    /// @notice Sets the global PNL threshold for all traders combined
    /// @param threshold The new global PNL threshold in USD
    function setGlobalPnlThreshold(uint256 threshold) external onlyOwner {
        uint256 oldThreshold = globalPnlThreshold;
        globalPnlThreshold = threshold;

        emit GlobalPnlThresholdUpdated(oldThreshold, threshold);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    SET CHAIN METADATA
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Adds a blockchain network to the supported chains
    /// @param chainId The ID of the chain to add
    /// @param chainMetadata_ The metadata for the chain
    function addChain(uint256 chainId, ChainMetadata calldata chainMetadata_) external onlyOwner {
        /// @dev Check if chain already exists by looking for RPC URLs
        /// @dev If RPC URLs exist, the chain has already been configured
        require(chainMetadata[chainId].rpcUrls.length == 0, "chain already exists");

        /// @dev Add new chain ID to the list of supported chains
        chainIds.push(chainId);
        /// @dev Store the chain's metadata in the mapping
        chainMetadata[chainId] = chainMetadata_;
    }

    /// @notice Removes a blockchain network from the supported chains
    /// @param chainId The ID of the chain to remove
    function removeChain(uint256 chainId) external onlyOwner {
        /// @dev Clear all metadata for the specified chain
        delete chainMetadata[chainId];

        /// @dev Remove the chain ID from the chainIds array
        /// @dev Uses the 'swap and pop' pattern for gas-efficient removal
        for (uint256 i = 0; i < chainIds.length; i++) {
            if (chainIds[i] == chainId) {
                /// @dev Move the last element to the position of the element to delete
                chainIds[i] = chainIds[chainIds.length - 1];
                /// @dev Remove the last element (which is now a duplicate)
                chainIds.pop();
                break;
            }
        }
    }

    /// @notice Adds new deposit addresses for a specific chain
    /// @param chainId The ID of the chain to add deposit addresses for
    /// @param addresses Array of token addresses to add as valid deposit addresses
    /// @dev Appends new addresses to the existing depositAddresses array
    function addDepositAddresses(uint256 chainId, address[] calldata addresses) external onlyOwner {
        /// @dev Get storage reference to chain metadata for gas efficiency
        ChainMetadata storage metadata = chainMetadata[chainId];

        /// @dev Add each new deposit address to the array
        for (uint256 i = 0; i < addresses.length; i++) {
            metadata.depositAddresses.push(addresses[i]);
        }
    }

    /// @notice Removes a deposit address from a specific chain
    /// @param chainId The ID of the chain to remove deposit address from
    /// @param index The index of the deposit address to remove
    /// @dev Uses 'swap and pop' pattern for gas-efficient removal
    function removeDepositAddress(uint256 chainId, uint256 index) external onlyOwner {
        /// @dev Get storage reference to chain metadata for gas efficiency
        ChainMetadata storage metadata = chainMetadata[chainId];

        /// @dev Replace the address to be removed with the last address in the array
        metadata.depositAddresses[index] = metadata.depositAddresses[metadata.depositAddresses.length - 1];
        /// @dev Remove the last (now duplicated) address
        metadata.depositAddresses.pop();
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    SET RPC URLS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Adds new RPC URLs for a specific chain
    /// @param chainId The ID of the chain to add RPCs for
    /// @param rpcUrls Array of new RPC URLs to add
    function addRPC(uint256 chainId, string[] calldata rpcUrls) external onlyOwner {
        /// @dev Get the storage reference to chain's metadata to save gas
        ChainMetadata storage metadata = chainMetadata[chainId];
        /// @dev Iterate through the provided URLs and add each one
        for (uint256 i = 0; i < rpcUrls.length; i++) {
            metadata.rpcUrls.push(rpcUrls[i]);
        }
    }

    /// @notice Removes an RPC URL from a specific chain
    /// @dev Uses 'swap and pop' pattern for gas-efficient removal
    /// @param chainId The ID of the chain to remove RPC from
    /// @param index The index of the RPC URL to remove
    function removeRPC(uint256 chainId, uint256 index) external onlyOwner {
        /// @dev Get the storage reference to chain's metadata to save gas
        ChainMetadata storage metadata = chainMetadata[chainId];
        /// @dev Replace the RPC to be removed with the last RPC in the array
        metadata.rpcUrls[index] = metadata.rpcUrls[metadata.rpcUrls.length - 1];
        /// @dev Remove the last (now duplicated) RPC URL
        metadata.rpcUrls.pop();
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    SET TOKEN METADATA
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Adds new tokens and their associated data to a specific chain
    /// @param chainId The ID of the chain to add tokens to
    /// @param tokens Array of token contract addresses
    /// @param lpTokens Array of corresponding LP token addresses
    /// @param priceIds_ Array of price feed identifiers
    /// @param decimals Array of token decimal places
    /// @param collateralFactors Array of collateral factors in basis points
    function addTokens(
        uint256 chainId,
        address[] calldata tokens,
        address[] calldata lpTokens,
        string[] calldata priceIds_,
        uint8[] calldata decimals,
        uint16[] calldata collateralFactors
    ) external onlyOwner {
        /// @dev Get storage reference to chain metadata for gas efficiency
        ChainMetadata storage metadata = chainMetadata[chainId];

        /// @dev Add all token-related data in parallel arrays
        /// @dev Each index i corresponds to the same token across all arrays
        for (uint256 i = 0; i < tokens.length; i++) {
            metadata.underlyingTokens.push(tokens[i]);
            metadata.lpTokens.push(lpTokens[i]);
            metadata.priceIds.push(priceIds_[i]);
            metadata.decimals.push(decimals[i]);
            metadata.collateralFactors.push(collateralFactors[i]);
        }
    }

    /// @notice Removes a token and all its associated data from a specific chain
    /// @param chainId The ID of the chain to remove token from
    /// @param index The index of the token and its associated data to remove
    function removeToken(uint256 chainId, uint256 index) external onlyOwner {
        /// @dev Get storage reference to chain metadata for gas efficiency
        ChainMetadata storage metadata = chainMetadata[chainId];

        /// @dev Remove token address using swap and pop
        metadata.underlyingTokens[index] = metadata.underlyingTokens[metadata.underlyingTokens.length - 1];
        metadata.underlyingTokens.pop();

        /// @dev Remove LP token address
        metadata.lpTokens[index] = metadata.lpTokens[metadata.lpTokens.length - 1];
        metadata.lpTokens.pop();

        /// @dev Remove price feed ID
        metadata.priceIds[index] = metadata.priceIds[metadata.priceIds.length - 1];
        metadata.priceIds.pop();

        /// @dev Remove decimals
        metadata.decimals[index] = metadata.decimals[metadata.decimals.length - 1];
        metadata.decimals.pop();

        /// @dev Remove collateral factor
        metadata.collateralFactors[index] = metadata.collateralFactors[metadata.collateralFactors.length - 1];
        metadata.collateralFactors.pop();
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    SET CONTRACT ADDRESSES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Updates the credit vault address for a specific chain
    /// @param chainId The ID of the chain to update
    /// @param vault The new credit vault contract address
    function setCreditVault(uint256 chainId, address vault) external onlyOwner {
        chainMetadata[chainId].creditVault = vault;
    }

    /// @notice Updates the RFQ (Request for Quote) pool address for a specific chain
    /// @param chainId The ID of the chain to update
    /// @param pool The new RFQ pool contract address
    function setRFQPool(uint256 chainId, address pool) external onlyOwner {
        chainMetadata[chainId].RFQPool = pool;
    }

    /// @notice Updates the multicall contract address for a specific chain
    /// @param chainId The ID of the chain to update
    /// @param multicall The new multicall contract address
    function setMulticall(uint256 chainId, address multicall) external onlyOwner {
        chainMetadata[chainId].multicall = multicall;
    }

    /// @notice Updates the bridge contract address for a specific chain
    /// @param chainId The ID of the chain to update
    /// @param bridge The new bridge contract address
    function setBridge(uint256 chainId, address bridge) external onlyOwner {
        chainMetadata[chainId].bridge = bridge;
    }

    /// @notice Updates multiple price feed IDs at specific indexes for a chain
    /// @param chainId The ID of the chain to update
    /// @param indexes Array of indexes to update
    /// @param newPriceIds Array of new price feed IDs to set
    /// @dev indexes[i] will be updated with newPriceIds[i]
    function setPriceIdAtIndex(
        uint256 chainId,
        uint256[] calldata indexes,
        string[] calldata newPriceIds
    ) external onlyOwner {
        /// @dev Get storage reference to chain metadata for gas efficiency
        ChainMetadata storage metadata = chainMetadata[chainId];

        /// @dev Update each price ID at the specified index
        for (uint256 i = 0; i < indexes.length; i++) {
            metadata.priceIds[indexes[i]] = newPriceIds[i];
        }
    }

    /// @notice Sets quote deviation limits for multiple tokens
    /// @param tokens Array of token addresses
    /// @param deviationLimits Array of deviation limits in basis points
    function setQuoteDeviationLimits(
        address[] calldata tokens,
        uint256[] calldata deviationLimits
    ) external onlyOwner {
        for (uint256 i = 0; i < tokens.length; i++) {
            require(deviationLimits[i] <= maxQuoteDeviationLimit, "deviation limit exceeds maximum");
            quoteDeviationLimitBips[tokens[i]] = deviationLimits[i];
        }
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    READ FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Retrieves all metadata for a specific chain
    /// @dev Returns multiple arrays and addresses containing chain configuration
    /// @param chainId The ID of the chain to query
    /// @return rpcUrls Array of RPC URLs for the chain
    /// @return underlyingTokens Array of underlying token addresses
    /// @return lpTokens Array of LP token addresses
    /// @return depositAddresses Array of valid deposit token addresses
    /// @return priceIds Array of price feed identifiers
    /// @return decimals Array of token decimal places
    /// @return collateralFactors Array of collateral factors in basis points
    /// @return creditVault Address of the credit vault contract
    /// @return RFQPool Address of the RFQ pool contract
    /// @return multicall Address of the multicall contract
    /// @return bridge Address of the bridge contract
    function getChainMetadata(uint256 chainId)
        external
        view
        returns (
            string[] memory,
            address[] memory,
            address[] memory,
            address[] memory,
            string[] memory,
            uint8[] memory,
            uint16[] memory,
            address,
            address,
            address,
            address
        )
    {
        /// @dev Load chain metadata into memory for view function
        ChainMetadata memory metadata = chainMetadata[chainId];

        /// @dev Return all metadata in a single tuple
        return (
            metadata.rpcUrls,
            metadata.underlyingTokens,
            metadata.lpTokens,
            metadata.depositAddresses,
            metadata.priceIds,
            metadata.decimals,
            metadata.collateralFactors,
            metadata.creditVault,
            metadata.RFQPool,
            metadata.multicall,
            metadata.bridge
        );
    }

    /// @notice Retrieves the list of all supported chain IDs
    /// @return uint256[] Array of chain IDs
    function getChainIds() external view returns (uint256[] memory) {
        return chainIds;
    }

    /// @notice Gets the quote deviation limit for a specific token
    /// @param token The token address
    /// @return The deviation limit in basis points (returns default if not set)
    function getQuoteDeviationLimitBips(address token) public view returns (uint256) {
        uint256 limit = quoteDeviationLimitBips[token];
        return limit == 0 ? DEFAULT_QUOTE_DEVIATION_LIMIT : limit;
    }

    /// @notice Retrieves the list of all trusted contract addresses
    /// @return address[] Array of trusted contract addresses
    function getTrustedContracts() external view returns (address[] memory) {
        return trustedContracts;
    }

    /// @notice Retrieves the list of all trader addresses
    /// @return address[] Array of trader addresses
    function getTraders() external view returns (address[] memory) {
        return traders;
    }

    /// @notice Retrieves the list of all PNL whitelist addresses
    /// @return address[] Array of PNL whitelist addresses
    function getPnlWhitelist() external view returns (address[] memory) {
        return pnlWhitelist;
    }
}
