// SPDX-License-Identifier: MIT
// Verified by Toinounet21
pragma solidity 0.8.20;

import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./interfaces/IBIFKN314Factory.sol";
import "./BIFKN314.sol";

/**
 * @title BIFKN314Factory
 * @dev The BIFKN314Factory contract deploys new instances of the BIFKN314 contract.
 * It also stores the details of the deployed BIFKN314 contracts and their corresponding LP tokens.
 * It allows the fee setter to set the feeTo address, the feeToSetter address, and the fee distribution threshold.
 * The contract is owned by the deployer and inherits the ReentrancyGuard and Ownable contracts.
 * The contract also implements the IBIFKN314Factory interface.
 * The contract also implements the IBIFKN314FeeHandler interface. Which enables the BIFKN314 contract to distribute fees.
 * The contract emits events for BIFKN314 deployment, feeTo address setting, feeToSetter address setting, and fee distribution threshold setting.
 * The contract also defines custom errors for invalid addresses, empty names, long names, empty symbols, long symbols, invalid fee setters, and unauthorized access.
 */
contract BIFKN314Factory is
    IBIFKN314Factory,
    ReentrancyGuard,
    Ownable(msg.sender)
{
    /**
     * @dev Struct to store the information of a BIFKN314 token.
     * @param name The name of the BIFKN314 token.
     * @param symbol The symbol of the BIFKN314 token.
     * @param totalSupply The total supply of the BIFKN314 token.
     * @param tokenAddress The address of the BIFKN314 token.
     * @param lpAddress The address of the LP (Liquidity Provider) token.
     */
    struct TokenInfo {
        string name;
        string symbol;
        uint256 totalSupply;
        address tokenAddress;
        address lpAddress;
        address deployer;
    }

    /**
     * @dev Mapping to store the addresses of bifkn314 contracts deployed by each deployer.
     * The key of the mapping is the deployer's address, and the value is an array of bifkn314 contract addresses.
     */
    mapping(address deployer => address[] tokenAddresses)
        public tokenAddressesByDeployer;

    /**
     * @dev Mapping to store TokenInfo structs by BIFKN314 contract address.
     * tokenAddress => tokenInfo
     */
    mapping(address tokenAddress => TokenInfo tokenInfo)
        public tokenInfoByTokenAddress;

    /**
     * @dev An array that stores the addresses of all instances of the BIFKN314 contract.
     */
    address[] public allTokens;

    /**
     * @dev The feeRate variable represents the fee rate for a specific operation.
     * The default value is set to 10, which is equivalent to 0.1%.
     * It's based on a scale of 10000, where 10000 is equivalent to 100%.
     * The fee is calculated as (amount * feeRate) / 10000.
     * The fee is deducted from the amount and sent to the feeTo address.
     * So if the feeRate is 10, 0.1% of the amount will be deducted as a fee.
     */
    uint256 public feeRate = 10; // 0.1%

    /**
     * @dev The address variable `feeTo` represents the address where the fees will be sent to.
     */
    address public feeTo;

    /**
     * @dev The address of the fee setter for the BIFKN314Factory contract.
     */
    address public feeToSetter;

    /**
     * @dev The threshold for fee distribution.
     * If the fee is greater than or equal to this threshold, it will be distributed.
     * The default value is set to 1 ether. This should be set based on the chain's native token.
     */
    uint256 public feeDistributionThreshold = 1 ether;

    /**
     * @dev The deployment fee for deploying a new BIFKN314 contract.
     */
    uint256 public deploymentFee = 0 ether;

    /**
     * @dev Modifier to restrict access to the `onlyFeeToSetter` function.
     * It ensures that only the `feeToSetter` address can execute the function.
     * Reverts with an error message if the caller is not the `feeToSetter`.
     */
    modifier onlyFeeToSetter() {
        if (_msgSender() != feeToSetter) revert OnlyFeeToSetter(_msgSender());
        _;
    }

    /**
     * @dev Initializes the BIFKN314Factory contract with the specified fee setter and deployment fee.
     * @param deploymentFee_ The deployment fee to be set based on the chain's native token.
     */
    constructor(uint256 deploymentFee_) {
        feeToSetter = msg.sender;
        feeTo = msg.sender;

        // deployment fee should be set based on the chain's native token
        deploymentFee = deploymentFee_;
    }

    /**
     * @dev Deploys a new BIFKN314 contract.
     * @param tokenName The name of the BIFKN314 contract.
     * @param tokenSymbol The symbol of the BIFKN314 contract.
     * @param owner_ The address of the owner of the BIFKN314 contract.
     * @param totalSupply The total supply of the BIFKN314 contract.
     * @param tradingFee The trading fee for the BIFKN314 contract.
     * @param maxWalletPercent The maximum wallet percentage for the BIFKN314 contract.
     * @param metadataURI The metadata URI for the BIFKN314 contract.
     */
    function deployBIFKN314(
        string memory tokenName,
        string memory tokenSymbol,
        uint256 totalSupply,
        address owner_,
        uint256 tradingFee,
        uint256 maxWalletPercent,
        string memory metadataURI
    )
        external
        payable
        nonReentrant
        returns (address contractAddress, address liquidityTokenAddress)
    {
        // check if the deployment fee is paid
        if (msg.value < deploymentFee) revert InsufficientDeploymentFee();
        // check the validity of the constructor parameters
        _checkConstructorParams(
            tokenName,
            tokenSymbol,
            owner_,
            totalSupply,
            tradingFee,
            maxWalletPercent
        );

        address sender = _msgSender();

        // deploy the BIFKN314 contract
        BIFKN314 _contract = new BIFKN314();
        // initialize the BIFKN314 contract
        _contract.initialize(tokenName, tokenSymbol);
        // set the supply and mint
        _contract.setSupplyAndMint(
            totalSupply,
            owner_,
            tradingFee,
            maxWalletPercent,
            metadataURI
        );

        // get the contract address
        contractAddress = address(_contract);

        // get the LP Token address
        liquidityTokenAddress = address(_contract.liquidityToken());

        // Store BIFKN314 details in the nested mapping
        TokenInfo memory newBifkn314TokenInfo = TokenInfo({
            name: tokenName,
            symbol: tokenSymbol,
            totalSupply: totalSupply,
            tokenAddress: contractAddress,
            lpAddress: liquidityTokenAddress,
            deployer: sender
        });

        tokenInfoByTokenAddress[contractAddress] = newBifkn314TokenInfo;
        tokenAddressesByDeployer[sender].push(contractAddress);

        // store the contract address
        allTokens.push(contractAddress);

        // transfer the deployment fee to the feeTo address
        _transferFee();

        emit TokenCreated(
            sender,
            tokenName,
            tokenSymbol,
            contractAddress,
            liquidityTokenAddress,
            allTokens.length
        );
    }

    /**
     * @dev Returns the length of the `allTokens` array.
     * @return The length of the `allTokens` array as a uint256 value.
     */
    function allTokensLength() public view returns (uint256) {
        return allTokens.length;
    }

    /**
     * @dev Returns an array of all BIFKN314 Tokens.
     * @return An array of addresses representing all BIFKN314 Tokens.
     */
    function getAllTokens() public view returns (address[] memory) {
        return allTokens;
    }

    /**
     * @dev Retrieves the array of BIFKN314 contract addresses deployed by a specific deployer.
     * @param deployer The address of the deployer.
     * @return An array of BIFKN314 contract addresses deployed by the specified deployer.
     */
    function getTokensByDeployer(
        address deployer
    ) public view returns (address[] memory) {
        return tokenAddressesByDeployer[deployer];
    }

    /**
     * @dev Sets the address to which fees will be sent.
     * Can only be called by the feeToSetter.
     * @param feeTo_ The address to set as the feeTo address.
     */
    function setFeeTo(address feeTo_) external onlyFeeToSetter {
        feeTo = feeTo_;
    }

    /**
     * @dev Sets the address of the fee setter.
     * Can only be called by the current fee setter.
     * @param feeToSetter_ The address of the new fee setter.
     */
    function setFeeToSetter(address feeToSetter_) external onlyFeeToSetter {
        if (feeToSetter_ == address(0)) revert InvalidAddress();
        feeToSetter = feeToSetter_;
    }

    /**
     * @dev Sets the fee rate for the contract. This is the fee rate for swaps on each BIFKN314 contract.
     * @param feeRate_ The new fee rate to be set.
     * Requirements:
     * - `feeRate_` must be less than or equal to 10.
     * Modifiers:
     * - `onlyFeeToSetter`: Only the fee to setter can call this function.
     */
    function setFeeRate(uint256 feeRate_) external onlyFeeToSetter {
        if (feeRate_ > 10) revert InvalidFeeRate();

        feeRate = feeRate_;
    }

    /**
     * @dev Sets the threshold for fee distribution.
     * Can only be called by the feeToSetter.
     * This pertains to the fee threshold on the BIFKN314 contracts
     * @param feeDistributionThreshold_ The new threshold for fee distribution.
     */
    function setFeeDistributionThreshold(
        uint256 feeDistributionThreshold_
    ) external onlyFeeToSetter {
        feeDistributionThreshold = feeDistributionThreshold_;
    }

    /**
     * @dev Sets the deployment fee for deploying a new BIFKN314 contract.
     * Can only be called by the feeToSetter.
     * @param deploymentFee_ The new deployment fee to be set based on the chain's native token.
     */
    function setDeploymentFee(uint256 deploymentFee_) external onlyOwner {
        deploymentFee = deploymentFee_;
    }

    /**
     * @dev Transfers the fees accumulated in the contract to the designated fee recipient.
     * @notice This function is internal and can only be called from within the contract.
     * @notice The fees are transferred as the balance of the contract to the `feeTo` address.
     * @notice If the transfer fails, a `WithdrawFailed` exception is thrown.
     */
    function _transferFee() internal {
        // if the deployment fee is 0, don't transfer
        // if the feeTo is not set, don't transfer
        if (deploymentFee == 0) return;

        uint256 balance = address(this).balance;
        (bool success, ) = payable(feeTo).call{value: balance}("");
        if (!success) revert DistributionFailed();

        emit FeeDistributed(feeTo, balance);
    }

    /**
     * @dev Internal function to check the validity of constructor parameters.
     * @param tokenName The name of the token.
     * @param tokenSymbol The symbol of the token.
     * @param owner_ The address of the token owner.
     * @param totalSupply The total supply of the token.
     * @param tradingFee The trading fee for the token.
     * @param maxWalletPercent The maximum wallet percentage for the token.
     * @dev This function checks if the provided parameters meet the required conditions:
     * - The name and symbol must not be empty.
     * - The owner address must be a valid address (not zero address).
     * - The total supply must be greater than zero.
     * - The name must not exceed 50 characters.
     * - The symbol must not exceed 10 characters.
     * - The trading fee must be less than or equal to 500 (5%).
     * - The max wallet percent must be less than or equal to 10000 (100%).
     * @dev If any of the conditions are not met, the function reverts with the corresponding error message.
     */
    function _checkConstructorParams(
        string memory tokenName,
        string memory tokenSymbol,
        address owner_,
        uint256 totalSupply,
        uint256 tradingFee,
        uint256 maxWalletPercent
    ) internal pure {
        if (bytes(tokenName).length == 0) {
            revert NameMustNotBeEmpty();
        }
        if (bytes(tokenSymbol).length == 0) {
            revert SymbolMustNotBeEmpty();
        }
        if (owner_ == address(0)) {
            revert InvalidAddress();
        }
        if (totalSupply == 0) {
            revert SupplyMustBeGreaterThanZero();
        }
        if (bytes(tokenName).length > 50) {
            revert NameTooLong();
        }
        if (bytes(tokenSymbol).length > 10) {
            revert SymbolTooLong();
        }
        if (tradingFee > 500) {
            // 5%
            revert InvalidTradingFee();
        }
        if (maxWalletPercent > 10000) {
            // 100%
            revert InvalidMaxWalletPercent();
        }
    }
}
