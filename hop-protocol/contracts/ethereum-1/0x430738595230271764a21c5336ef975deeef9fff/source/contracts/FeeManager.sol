//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.2;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IFeeManager} from "./interfaces/IFeeManager.sol";
import {EtherVault} from "./EtherVault.sol";

import {console} from "forge-std/console.sol";

/// @title FeeManager
/// @notice Manages fee collection, distribution, and pricing across chains for the Rails bridge
/// @dev Implements a vault system per chain to collect and distribute fees.
/// Uses oracle-based pricing to calculate fees based on gas costs.
contract FeeManager is IFeeManager, Ownable {
    // Access control
    address public gateway;
    address public feeOracle;
    address public feeDistributor;
    
    // Gas amounts used for fee calculations
    uint256 public sendFeeGas;
    uint256 public postClaimFeeGas;

    mapping(uint256 => EtherVault) public vaults; // Per-chain fee vaults for collecting and distributing fees
    mapping(uint256 => uint256) public prices; // Oracle-provided fee prices per chain (gas price multipliers)
    mapping(address => mapping(bytes32 => uint256)) public totalFeeCreditsForPathId; // Tracks total fee credits earned by bonders per path
    mapping(address => mapping(bytes32 => uint256)) public feesClaimedFromPathId; // Tracks how much fees have been claimed by bonders per path

    modifier onlyGateway() {
        require(msg.sender == gateway, "FeeManager: unauthorized");
        _;
    }

    modifier onlyFeeOracle() {
        require(msg.sender == feeOracle, "FeeManager: unauthorized");
        _;
    }

    modifier onlyFeeDistributor() {
        require(msg.sender == feeDistributor, "FeeManager: unauthorized");
        _;
    }

    constructor(
        address _feeOracle,
        address _feeDistributor,
        uint256 _sendFeeGas,
        uint256 _postClaimFeeGas
    ) {
        feeOracle = _feeOracle;
        feeDistributor = _feeDistributor;
        sendFeeGas = _sendFeeGas;
        postClaimFeeGas = _postClaimFeeGas;
    }

    /// @notice Creates a fee vault for a specific chain if it doesn't exist
    /// @dev Called when initializing new paths to ensure fee collection infrastructure exists
    function createFeeVaultIfNeeded(uint256 chainId) external onlyGateway {
        if (address(vaults[chainId]) == address(0)) {
            vaults[chainId] = new EtherVault();
        }
    }

    /// @notice Collects send fee from users when initiating transfers
    /// @dev Uses predefined gas amount for send operations
    /// @return fee The amount of fee collected in wei
    function collectSendFee(uint256 chainId) external payable returns (uint256 fee) {
        return collectFee(chainId, chainId, sendFeeGas);
    }

    /// @notice Collects post claim fee from bonders when posting claims
    /// @dev Uses predefined gas amount for claim posting operations
    /// @return fee The amount of fee collected in wei
    function collectPostClaimFee(uint256 chainId) external payable returns (uint256 fee) {
        fee = collectFee(block.chainid, chainId, postClaimFeeGas);
        return fee;
    }

    /// @notice Internal fee collection logic that validates payment and deposits to vault
    /// @param feeChainId The chain id to use for the for the fee price
    /// @param vaultChainId The chain id for the vault that is receiving the fee
    /// @param gas The gas amount used to calculate the fee
    /// @return fee The amount of fee collected and deposited to the vault
    function collectFee(uint256 feeChainId, uint256 vaultChainId, uint256 gas) internal returns (uint256 fee){
        fee = getFee(feeChainId, gas);
        require(msg.value == fee, "FeeManager: invalid fee amount");

        EtherVault vault = vaults[vaultChainId];
        assert(address(vault) != address(0));
        (bool success, ) = address(vault).call{value: fee}("");
        require(success, "FeeManager: transfer to vault failed");
        return fee;
    }

    /// @notice Credits send fees to bonders for later distribution (gateway operation)
    /// @dev Tracks fees that bonders should receive for facilitating transfers. Uses current
    /// base fee to calculate credit amount, which will be distributed later via cross-chain messages.
    function creditSendFee(bytes32 pathId, address recipient) external onlyGateway {
        uint256 fee = sendFeeGas * block.basefee;
        totalFeeCreditsForPathId[recipient][pathId] += fee;
    }

    /// @notice Distributes accumulated fees to bonders via cross-chain messages (gateway operation)
    /// @dev Calculates new fees since last claim and transfers from the counterpart chain's vault.
    /// This enables bonders to claim fees they earned on other chains.
    function distributeClaimedFees(
        bytes32 pathId,
        uint256 counterpartChainId,
        address account,
        uint256 totalFees
    )
        external
        onlyGateway
    {
        require(prices[counterpartChainId] > 0, "FeeManager: message from invalid chain");

        uint256 claimed = feesClaimedFromPathId[account][pathId];
        uint256 newFees = totalFees - claimed;
        feesClaimedFromPathId[account][pathId] = totalFees;

        EtherVault vault = vaults[counterpartChainId];
        require(address(vault) != address(0), "FeeManager: vault does not exist");
        vault.transfer(account, newFees);
    }

    /// @notice Distributes excess fees from vaults to specified recipients (distributor operation)
    /// @dev Allows the fee distributor to allocate surplus fees for protocol development,
    /// DAO treasury, or other purposes beyond bonder compensation.
    function distributeExcessFees(
        uint256 chainId,
        address[] memory recipients,
        uint256[] memory amounts
    )
        external
        onlyFeeDistributor
    {
        require(recipients.length == amounts.length, "FeeManager: invalid input length");
        for (uint256 i = 0; i < recipients.length; i++) {
            EtherVault vault = vaults[chainId];
            vault.transfer(recipients[i], amounts[i]);
        }
    }

    /// @notice Returns the fee covering fees credited to bonders when posting claims
    /// @return The send fee amount in wei for the specified chain
    function getSendFee(uint256 chainId) external view returns (uint256) {
        return getFee(chainId, sendFeeGas);
    }

    /// @notice Gets the fee required for posting claims on the current chain
    /// @return The post claim fee amount in wei
    function getPostClaimFee() public view returns (uint256) {
        return getFee(block.chainid, postClaimFeeGas);
    }

    /// @notice Gets the fee required for removing claims (same as post claim fee)
    /// @return The remove claim fee amount in wei
    function getRemoveFee() external view returns (uint256) {
        return getPostClaimFee();
    }

    /// @notice Calculates fee amount based on gas consumption and chain-specific pricing
    /// @dev Multiplies gas amount by oracle-provided price for the target chain
    /// @return fee The calculated fee amount in wei
    function getFee(uint256 chainId, uint256 gas) public view returns (uint256 fee) {
        uint256 feePrice;
        if (chainId == block.chainid) {
            feePrice = block.basefee;
        } else {
            feePrice = prices[chainId];
        }
        require(feePrice > 0, "FeeManager: invalid chain id");
        fee = gas * feePrice;
        return fee;
    }

    /// @notice Gets the fee vault address for a specific chain
    /// @return The address of the EtherVault contract for the specified chain
    function getFeeVault(uint256 chainId) external view returns (address) {
        return address(vaults[chainId]);
    }

    /// @notice Updates the fee price for a specific chain (oracle operation)
    /// @dev Price represents the gas price multiplier used for fee calculations
    function setFeePrice(uint256 chainId, uint256 feePrice) external onlyFeeOracle {
        _setFeePrice(chainId, feePrice);
    }

    /// @notice Updates fee prices for multiple chains in a single transaction (oracle operation)
    /// @dev Batch operation for efficient price updates across multiple chains
    function setFeePrices(uint256[] calldata chainIds, uint256[] calldata _prices) external onlyFeeOracle {
        require(chainIds.length == _prices.length, "FeeManager: invalid input length");
        for (uint256 i = 0; i < chainIds.length; i++) {
            _setFeePrice(chainIds[i], _prices[i]);
        }
    }

    /// @notice Internal function to set fee price with validation
    /// @dev Ensures price is greater than zero to prevent division by zero errors
    function _setFeePrice(uint256 chainId, uint256 feePrice) internal {
        require(feePrice > 0, "FeeManager: invalid fee price");
        prices[chainId] = feePrice;
    }

    // Administrative functions for updating gas amounts and addresses

    /// @notice Updates the gas amount used for send fee calculations
    function setSendFeeGas(uint256 _sendFeeGas) external onlyOwner {
        sendFeeGas = _sendFeeGas;
    }

    /// @notice Updates the gas amount used for post claim fee calculations
    function setPostClaimFeeGas(uint256 _postClaimFeeGas) external onlyOwner {
        postClaimFeeGas = _postClaimFeeGas;
    }

    /// @notice Sets the gateway address (one-time operation)
    /// @dev Can only be set once to prevent unauthorized changes after deployment
    function setGateway(address _gateway) external onlyOwner {
        require(_gateway != address(0), "FeeManager: gateway cannot be zero address");
        require(gateway == address(0), "FeeManager: gateway already set");
        gateway = _gateway;
    }

    /// @notice Updates the fee oracle address
    /// @dev Oracle is responsible for providing chain-specific gas price data
    function setFeeOracle(address newFeeOracle) external onlyOwner {
        require(newFeeOracle != address(0), "RailsGateway: feeOracle cannot be zero address");
        feeOracle = newFeeOracle;
    }

    /// @notice Updates the fee distributor address
    /// @dev Distributor manages allocation of excess fees beyond bonder compensation
    function setFeeDistributor(address newFeeDistributor) external onlyOwner {
        require(newFeeDistributor != address(0), "RailsGateway: feeDistributor cannot be zero address");
        feeDistributor = newFeeDistributor;
    }
}
