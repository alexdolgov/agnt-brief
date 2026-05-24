pragma solidity 0.8.20;

import "lib/openzeppelin-contracts/contracts/access/extensions/AccessControlDefaultAdminRules.sol";
import "./ERC20BurnMint.sol";
import "./RateLimiter.sol";

/**
 * @title BridgeWrapper
 * @author Tensorplex Labs
 * @notice BridgeWrapper helps to facilitate a burns & mint bridge between a source chain and Ethereum.
 *         Specifically, this contract holds the logic to mint and burn the wrapped Token. 
 *         A relayer will be used to ensure burn / mint is executed with its corresponding event on the source chain.
 *         In the short-term we will use this set of contracts to bridge TAO from BitTensor to a new wrapped TAO token on Ethereum (name TBD).
 *         In the long-term we hope to re-use this contract for bridging between future partner blockchains and Ethereum.
 * 
 * @dev For extra security, a rateLimit is implemented to restrict the amount of wrapped token that can be burned / minted in a time period.
 * @dev Likewise, we have implemented a maximumAmount for the same reason. 
 * 
 */
contract BridgeWrapper is AccessControlDefaultAdminRules {
    // Libraries 
    using RateLimiter for RateLimiter.RateLimit;

    // Errors
    error AmountGreaterThanMax(uint256 inputAmount, uint256 maximumAmount);
    error AmountLesserThanMin(uint256 inputAmount, uint256 minimumAmount);
    error BurnLimitExceeded();
    error MintLimitExceeded();
    error OutgoingAmountAfterFeesIsZero();
    error InvalidChainID();

    // Roles
    // APPROVE_TRANSFER_ROLE and FEE_CONFIG_ROLE will be granted to Tensorplex Multisig wallets that will administer the bridge and relevant contracts. 
    // APPROVE_TRANSFER_ROLE permits user to call receiveFromChain() which triggers transfer of tokens from a source chain to Ethereum.
    bytes32 public constant APPROVE_TRANSFER_ROLE = keccak256("APPROVE_TRANSFER_ROLE"); 
    // FEE_CONFIG_ROLE permits user to set values in the following functions:
    // 1. setBaseFee, 2. setServiceFee, 3. setMinimumAmount, 4. setMaximumAmount)
    bytes32 public constant FEE_CONFIG_ROLE = keccak256("FEE_CONFIG_ROLE");
    // 
    bytes32 public constant MINT_BURN_UPDATE_ROLE = keccak256("MINT_BURN_UPDATE_ROLE"); 


    // State Variables
    //wToken is a generic wrapped Token. It is intended to be a Etherum wrapped version of the source chain's token.
    // this wToken instance is expected to be the address of our deployed ERC20BurnMint contract.
    ERC20BurnMint public immutable wToken; 
    RateLimiter.RateLimit private mintRateLimiter;
    RateLimiter.RateLimit private burnRateLimiter;

    // State Vars
    uint256 public baseFee; // a flat fee. If it is 0.05 x 10^6 TAO, mean 0.05% of fees will be charged
    uint256 public serviceFee; // E.g. If value is 1. 0.1% service Fee will be applied as a percentage of the overall TAO deposited after calculating base fee. Every "1" refers to 0.1% since it is divided by 1000
    uint256 public minimumAmount; // Minimuim amount that can be bridged in a single transaction
    uint256 public maximumAmount; // Max amount that can be bridged in a single transaction
    mapping(uint16 => bool) public  sourceChainIDs; // contains all permissble chainIDs to recieve from. 
    mapping(uint16 => bool) public  destChainIDs; // contains all permisslbe chainIDs to send to.

    // Events
    event SendToChain(
        uint16 indexed _dstChainId,
        string _dstTokenAddress,
        address indexed _from,
        string _toAddress,
        uint256 _amount,
        uint256 _fees,
        uint256 _amtAfterFees, 
        address _refundAddress
        );
    event ReceiveFromChain(uint16 indexed _srcChainId, address indexed _to, uint _amount);

    /**
     * @dev initializes the BridgeWrapper contract
     * 
     * @param _token should be the address of our deployed ERC20BurnMint wrapped token contract.
     * @param initialOwner The initial owner of the contract.
     * @param maxBurnCapacity The maximum burn capacity for rate limiting.
     * @param burnRefillRate The refill rate for burn rate limiting.
     * @param maxMintCapacity The maximum mint capacity for rate limiting.
     * @param mintRefillRate The refill rate for mint rate limiting.
     * @param _baseFee is the a flat fee that is charged in sendFromChain
     * @param _serviceFee is the a percentage fee that is charged in sendFromChain
     * @param _minimumAmount is the minimum permissble amount to input in sendFromChain
     * @param _maximumAmount is the max permissible amount to input in sendFromChain 
     * @param _sourceChainID is the initial chain that the contract can recieve tokens from
     * @param _destChainID is the initial chain that contract can send tokens to.
     */
    constructor(
        ERC20BurnMint _token, 
        address initialOwner,
        uint256 maxBurnCapacity,
        uint256 burnRefillRate, 
        uint256 maxMintCapacity,
        uint256 mintRefillRate,
        uint256 _baseFee,
        uint256 _serviceFee,
        uint256 _minimumAmount,
        uint256 _maximumAmount,
        uint16 _sourceChainID,
        uint16 _destChainID
    ) AccessControlDefaultAdminRules(1 hours, initialOwner){
        require(_minimumAmount > 0, "min amount must be greater than 0");
        require(_maximumAmount >= _minimumAmount, "max amount must be greater than min amount");
        require(_maximumAmount >= _baseFee, "max amount must be greater than base fee");
        require(address(_token) != address(0), "Token address cannot be the zero address");
        require(_serviceFee <= 500, "service fee cannot exceed 5%");
        wToken = _token;
        _grantRole(FEE_CONFIG_ROLE, initialOwner);
        _grantRole(APPROVE_TRANSFER_ROLE, initialOwner);

        burnRateLimiter.initialize(maxBurnCapacity, burnRefillRate);
        mintRateLimiter.initialize(maxMintCapacity, mintRefillRate);

        baseFee = _baseFee;
        serviceFee = _serviceFee;
        minimumAmount = _minimumAmount;
        maximumAmount = _maximumAmount;
        sourceChainIDs[_sourceChainID] = true;
        destChainIDs[_destChainID] = true;
    }
    
    
    /**
     * @notice sendToChain sends tokens from Ethereum to another chain. Can be called by any user who burns wrapped token for native token on destination chain.
     * @dev   The SendToChain event should be relayed to destination chain to trigger the corresponding mint / transfer action.
     * @dev   This function calculates and applies a flat base fee and a percentage service fee.
     * @dev   The full amount of tokens will be burned on Ethereum. It is expected that a corresponding amount of native token will be transfered to user on the destination chain. 
     * @dev   The fees will be collected on BitTensor. We intend to use a relayer indexer to implement this process.
     * 
     * @param _amount The amount of tokens to send.
     * @param _dstChainId The unique ID of the destination chain. This ID should be registered in destChainIDs to successfully send tokens.
     * @param _dstTokenAddress The address of the token on the destination chain.
     * @param _dstRecipient The recipient address on the destination chain.
     * @param _refundAddress The address to refund tokens if the transfer fails.
     */
    function sendToChain(uint256 _amount, uint16 _dstChainId, string memory _dstTokenAddress, string memory _dstRecipient, address _refundAddress) public {
        if (_amount < minimumAmount) revert AmountLesserThanMin(_amount, minimumAmount);
        if (_amount > maximumAmount) revert AmountGreaterThanMax(_amount, maximumAmount);
        if (burnRateLimiter.consume(_amount) == false) revert BurnLimitExceeded();
        if (destChainIDs[_dstChainId] == false) revert InvalidChainID();
        (uint256 totalFee, uint256 amountAfterFees) = getFeeAndApply(_amount);

        wToken.burn(msg.sender, _amount);

        emit SendToChain(_dstChainId, _dstTokenAddress, msg.sender, _dstRecipient, _amount, totalFee, amountAfterFees, _refundAddress);
    }

    /*
     * @notice receiveFromChain facilitates transfer of tokens from a source chain to Ethereum.
     * @dev Can only be called by an address which has APPROVE_TRANSFER_ROLE (We intend for only the Tensorplex multisig wallet accounts to have this role.)
     * @dev This function should be triggered following a corresponding transfer to bridge event on the source chain.
     * @dev a user first deposits a native token on source chain to our bridge wallet address.
     *      Once the deposit is confirmed, this function is triggered, minting the user a corresponding amount of wToken on Ethereum. 
     * 
     * @param _srcChainId The unique ID of the source chain. This ID should be registered in sourceChainIDs to successfully send tokens.
     * @param _amount The amount of tokens received.
     * @param _toAddress The address to mint the tokens to.
     */
    function receiveFromChain(uint16 _srcChainId, uint256 _amount, address _toAddress) public onlyRole(APPROVE_TRANSFER_ROLE) {
        require(_amount > 0, "Amount must be greater than 0");
        if (mintRateLimiter.consume(_amount) == false) revert MintLimitExceeded();
        if (sourceChainIDs[_srcChainId] == false) revert InvalidChainID();
        wToken.mint(_toAddress, _amount);
        emit ReceiveFromChain(_srcChainId, _toAddress, _amount);
    }

    /**
     * @notice Returns the available tokens to burn based on the burn rate limiter.
     * @return The available tokens to mint.
     */
    function getAvailableTokensToBurn() public view returns (uint256) {
        return burnRateLimiter.getAvailableTokens();
    }   
    /**
     * @notice Returns the available tokens to mint based on the mint rate limiter.
     * @return The available tokens to mint.
     */
    function getAvailableTokensToMint() public view returns (uint256) {
        return mintRateLimiter.getAvailableTokens();
    }   

    // @notice called by FEE_CONFIG_ROLE to change baseFee
    function setBaseFee(uint256 _baseFee) public onlyRole(FEE_CONFIG_ROLE) {
        baseFee = _baseFee;
    } 

    // @notice: called by FEE_CONFIG_ROLE to change serviceFee
    function setServiceFee(uint256 _serviceFee) public onlyRole(FEE_CONFIG_ROLE) {
        require(_serviceFee <= 500, "service fee cannot exceed 5%");
        serviceFee = _serviceFee;
    }

    // @notice: called by FEE_CONFIG_ROLE to change minimumAmount which is the minimum permissible amount for sendToChain
    function setMinimumAmount(uint256 _minimumAmount) public onlyRole(FEE_CONFIG_ROLE) {
        require(_minimumAmount <= maximumAmount, "min amount must be less than or equal to max amount");
        require(_minimumAmount > 0, "min amount must be greater than 0");
        require(_minimumAmount >= baseFee, "min amount must be greater than or equal to base fee");

        minimumAmount = _minimumAmount;
    } 

    // @notice: called by FEE_CONFIG_ROLE to change maximumAmount which is the maximum permissible amount for sendToChain
    function setMaximumAmount(uint256 _maximumAmount) public onlyRole(FEE_CONFIG_ROLE) {
        require(_maximumAmount >= minimumAmount, "max amount must be greater or equal to min amount");
        maximumAmount = _maximumAmount;
    } 

    /**
     * @notice getFeeAndApply takes in an input amount and outputs the total cost of fees and net amount after fees.
     * @dev getFeeAndApply charges a flat fee (baseFee) and a percentage fee (serviceFee) and subtracts this from input amount.
     * @dev The collection of fees will be implemented by the Relayer. Fees are expected to be deducted on BitTensor.
     * Example if total amount is 1.05 TAO and base Fee is 0.05 TAO
     * serviceFeeAmt will only take into account 1 TAO after base fee. 
     * if service Fee is 1, it means service Fee is 1%
     * so percentageFeeAmt will be 0.01 TAO
     * This means the user total potential received is 1.05 TAO - 0.05 TAO (base fee) - 0.01 TAO (service fee) = 0.99 TAO
     * 
     * @param amount is the input amount. The fees will be applied to this amount.
     * @return totalFee is the total value of fees paid
     * @return amountAfterFees is the net amount after fees have been applied.
     */
    function getFeeAndApply(uint256 amount) public view returns (uint256 totalFee, uint256 amountAfterFees){
        uint256 serviceFeeAmt = (((amount - baseFee) * serviceFee) / 1000);
        totalFee = baseFee + serviceFeeAmt;
        amountAfterFees = amount - totalFee;
        require(amountAfterFees > 0, "Amount after fees is 0");
        return (totalFee, amountAfterFees);
    }

    /**
     * @notice setSourceChainID is called by FEE_CONFIG_ROLE and registers/unregisters a chainID to permit sending tokens to that chain. 
     * @param _sourceChainID is the ID to be registered/unregistered
     * @param status is the boolean value to indicate registration status.
     */
    function setSourceChainID (uint16 _sourceChainID, bool status) public onlyRole(FEE_CONFIG_ROLE) {
        sourceChainIDs[_sourceChainID] = status;
    }

    /**
     * @notice setDestChainID is called by FEE_CONFIG_ROLE and registers/unregisters a chainID to permit receiving tokens from that chain. 
     * @param _destChainID is the ID to be registered/unregistered
     * @param status is the boolean value to indicate registration status.
     */
    function setDestChainID (uint16 _destChainID, bool status) public onlyRole(FEE_CONFIG_ROLE) {
        destChainIDs[_destChainID] = status;
    }

    /*
     *
     * Added burn and mint max cacpacity 
     *
     */

    function setBurnRateMaxCapacity(uint256 _maxCapacity) public onlyRole(MINT_BURN_UPDATE_ROLE) {
        burnRateLimiter.maxCapacity = _maxCapacity;
    }

    function setMintRateMaxCapacity(uint256 _maxCapacity) public onlyRole(MINT_BURN_UPDATE_ROLE) {
        // Set max mint rate to 5000 TAO
        require(_maxCapacity <= 5000 * 10**9, "Max capacity cannot exceed 5000 TAO");
        mintRateLimiter.maxCapacity = _maxCapacity;
    }

    function setBurnRateRefillRate(uint256 _refillRate) public onlyRole(MINT_BURN_UPDATE_ROLE) {
        burnRateLimiter.refillRate = _refillRate;
    }

    function setMintRateRefillRate(uint256 _refillRate) public onlyRole(MINT_BURN_UPDATE_ROLE) {
        require(_refillRate <= 83 * 10**9, "Max refill rate cannot exceed 83 TAO per minute");
        mintRateLimiter.refillRate = _refillRate;
    }

    function getMintRateRefillRate() public view returns (uint256) {
        return mintRateLimiter.refillRate;
    }
    function getBurnRateRefillRate() public view returns (uint256) {
        return burnRateLimiter.refillRate;
    }
    function getMintRateMaxCapacity() public view returns (uint256) {
        return mintRateLimiter.maxCapacity;
    }
    function getBurnRateMaxCapacity() public view returns (uint256) {
        return burnRateLimiter.maxCapacity;
    }
}

