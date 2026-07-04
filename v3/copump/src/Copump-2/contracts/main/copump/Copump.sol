// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

// Shared interface of the contract that DummyToken uses.
import "./ICopump.sol";
// Real token that created after listing (creation of a liquidity pool on DEX)
import "./Token.sol";
// Temporary substitution for a real token while trading on Copump.
// After listings the one can claim their tokens for real ones with ratio 1:1
import "./DummyToken.sol";
// Set the owner of the contract so they can receive fees and manage the contract
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";

abstract contract Copump is ICopump, Ownable2Step {
    using MessageHashUtils for bytes;
    using ECDSA for bytes32;

    // This struct is needed to track token's state like how much funds are raised
    // or if the token already reached its goal
    struct TokenInfo {
        uint256 funding;
        bool exists;
        address listedAddress;
        address creatorAddress;
    }

    // Only needed for initial event for backends
    struct TokenInitMetadata {
        string imageUrl;
        string description;
        string twitterUrl;
        string telegramUrl;
        string youtubeUrl;
        string websiteUrl;
    }

    // Show token's state in a convenient way
    struct TokenState {
        uint256 funding;
        uint256 supply;
        uint256 marketCap;
    }

    // Amount of weis the contract will take from a token creator
    uint256 public creationFee;
    // DEX's factory address to create a new pair pool
    address public factoryAddress;
    // DEX's router address to add liquidity to the pool
    address public routerAddress;
    // Determines how many weis will be additionally taken when buying/selling.
    // Can be adjusted by the owner of the contract but can't exceed MAX_FEE_PERCENT
    uint256 public feePercent = 1;
    // Percent of buy/sell fee that will be transfered to the token creator
    uint256 public tokenCreatorFeePercent = 25;
    // Percent of buy/sell fee that will be transfered to the referrer
    uint256 public referrerFeePercent = 25;
    address public copumpSignerAddress = 0x86C5E375a4662B90736a605D69914c2ffbEb28E4;

    // Funding value at which a token is ready to create a liquidity pool
    uint256 public immutable FUND_THRESHOLD;
    // Initial price in wei
    uint256 public immutable INITIAL_PRICE;

    // Allow slippage imitate float value
    uint256 public constant SLIPPAGE_PERCENT_SCALING_FACTOR = 100;
    // Limit upper bound of slippage percent to 50%
    uint256 public constant MAX_SCALED_SLIPPAGE_PERCENT = 50 * SLIPPAGE_PERCENT_SCALING_FACTOR;
    // Limit upper bound of feePercent
    uint256 public constant MAX_FEE_PERCENT = 10;
    // Decimals part for a token since solidity does not support floats
    uint256 public constant DECIMALS = 1e18;
    // Maximum supply for tokens
    uint256 public constant MAX_SUPPLY = 800_000 * DECIMALS;
    // Initial supply that will be minted for a new liquidity pool.
    uint256 public constant INITIAL_SUPPLY = 200_000 * DECIMALS;
    // Limit iterations for Maclaurin series
    uint256 public constant MAX_ITERATIONS = 100;
    // Precision tolerance to break the loop
    uint256 public constant TOLERANCE = 1e6;
    // Scaling factor to handle precision
    uint256 public constant SCALING_FACTOR = 1e18;
    // Growth rate (k), scaled to avoid precision loss
    uint256 public constant SCALED_K = 16e11;

    // Allow to get info by a token address
    mapping(address => TokenInfo) public tokenInfos;

    // Emits on deploy
    event Initialization(
        uint256 fundThreshold,
        uint256 maxSupply,
        uint256 maxMarketCap,
        uint256 initialPrice,
        uint256 scaledGrowthRate,
        uint256 scalingFactor,
        uint256 decimals,
        uint256 occuredAt
    );
    // Emits when someone transfers tokens outside of Copump
    event ExternalTransfer(
        address indexed tokenAddress,
        address indexed from,
        address indexed to,
        uint256 amount,
        uint256 occuredAt
    );
    // Emits when the owner changes creationFee
    event CreationFeeChanged(uint256 creationFee, uint256 occuredAt);
    // Emits when the owner changes factoryAddress
    event FactoryAddressChanged(address newFactoryAddress, uint256 occuredAt);
    // Emits when the owner changes routerAddress
    event RouterAddressChanged(address newRouterAddress, uint256 occuredAt);
    // Emits when the owner changes feePercent
    event FeePercentChanged(uint256 feePercent, uint256 occuredAt);
    // Emits when the owner changes tokenCreatorFeePercent
    event TokenCreatorFeePercentChanged(
        uint256 tokenCreatorFeePercent,
        uint256 occuredAt
    );
    // Emits when the owner changes referrerFeePercent
    event ReferrerFeePercentChanged(
        uint256 referrerFeePercent,
        uint256 occuredAt
    );
    // Emits when the owner changes copumpSignerAddress
    event CopumpSignerAddressChanged(
        address copumpSignerAddress,
        uint256 occuredAt
    );
    // Emits when an account creates new token
    event TokenCreated(
        address indexed tokenAddress,
        address indexed creator,
        string name,
        string symbol,
        TokenInitMetadata metadata,
        uint256 creationFee,
        uint256 occuredAt
    );
    // Emits when an account purchases tokens (the contract receives ETH)
    event TokenPurchased(
        address indexed tokenAddress,
        address indexed buyer,
        uint256 amount,
        uint256 totalPrice,
        uint256 fee,
        TokenState tokenState,
        uint256 occuredAt
    );
    // Emits when an account sells tokens (the contract sends ETH)
    event TokenSold(
        address indexed tokenAddress,
        address indexed seller,
        uint256 amount,
        uint256 totalPrice,
        uint256 fee,
        TokenState tokenState,
        uint256 occuredAt
    );
    // Emits when a token reaches its goal and its liquidity pool has been created
    event TokenListed(
        address indexed tokenAddress,
        address indexed poolAddress,
        address indexed listedAddress,
        uint256 occuredAt
    );
    // Emits when an account claims his tokens
    event TokenClaimed(
        address indexed tokenAddress,
        address indexed accountAddress,
        uint256 amount,
        uint256 occuredAt
    );

    // Raises when budget is less than minPrice
    error BelowSlippageLimit(uint256 budget, uint256 minPrice, uint256 minAmount);
    // Raises when budget is more than maxPrice
    error AboveSlippageLimit(uint256 budget, uint256 maxPrice, uint256 maxAmount);

    constructor(
        address ownerAddress,
        address factoryAddress_,
        address routerAddress_,
        uint256 creationFee_,
        uint256 fundThreshold_,
        uint256 initialPrice_
    ) Ownable(ownerAddress) {
        require(factoryAddress_ != address(0), "Factory's address cannot be zero");
        require(routerAddress_ != address(0), "Router's address can't be zero");

        factoryAddress = factoryAddress_;
        routerAddress = routerAddress_;
        creationFee = creationFee_;
        FUND_THRESHOLD = fundThreshold_;
        INITIAL_PRICE = initialPrice_;
        emit Initialization(
            fundThreshold_,
            MAX_SUPPLY,
            calculateMarketCap(MAX_SUPPLY),
            initialPrice_,
            SCALED_K,
            SCALING_FACTOR,
            DECIMALS,
            block.timestamp
        );
    }

    // Allow catching children's transfers for balance tracking
    function notifyExternalTransfer(address from, address to, uint256 amount) external {
        TokenInfo memory tokenInfo = tokenInfos[msg.sender];
        require(tokenInfo.exists, "Unknown caller");

        emit ExternalTransfer(msg.sender, from, to, amount, block.timestamp);
    }

    // Allow the contract's owner to change fee value for token creation
    function setCreationFee(uint256 newCreationFee) external onlyOwner {
        emit CreationFeeChanged(newCreationFee, block.timestamp);
        creationFee = newCreationFee;
    }

    // Allow the owner to change the factory address
    function setFactoryAddress(address newFactoryAddress) external onlyOwner {
        require(newFactoryAddress != address(0), "Factory's address cannot be zero");

        emit FactoryAddressChanged(newFactoryAddress, block.timestamp);
        factoryAddress = newFactoryAddress;
    }

    // Allow the owner to change the router address
    function setRouterAddress(address newRouterAddress) external onlyOwner {
        require(newRouterAddress != address(0), "Router's address cannot be zero");

        emit RouterAddressChanged(newRouterAddress, block.timestamp);
        routerAddress = newRouterAddress;
    }

    // Allow the contract's owner to change fee percent for buyings/seelings
    function setFeePercent(uint256 newFeePercent) external onlyOwner {
        require(newFeePercent <= MAX_FEE_PERCENT, "Fee value exceeds max fee value");

        emit FeePercentChanged(newFeePercent, block.timestamp);
        feePercent = newFeePercent;
    }

    // Allow the contract's owner to change fee percent for token creators
    function setTokenCreatorFeePercent(
        uint256 newTokenCreatorFeePercent
    ) external onlyOwner {
        require(newTokenCreatorFeePercent + referrerFeePercent <= 100, "Incorrect percent");

        emit TokenCreatorFeePercentChanged(newTokenCreatorFeePercent, block.timestamp);
        tokenCreatorFeePercent = newTokenCreatorFeePercent;
    }

    // Allow the contract's owner to change fee percent for token creators
    function setReferrerFeePercent(
        uint256 newReferrerFeePercent
    ) external onlyOwner {
        require(newReferrerFeePercent + tokenCreatorFeePercent <= 100, "Incorrect percent");

        emit ReferrerFeePercentChanged(newReferrerFeePercent, block.timestamp);
        referrerFeePercent = newReferrerFeePercent;
    }

    // Allow the contract's owner to change copumpSignerAddress
    function setCopumpSignerAddress(address newCopumpSignerAddress) external onlyOwner {
        require(newCopumpSignerAddress != address(0), "Copump signer address can't be 0");

        emit CopumpSignerAddressChanged(newCopumpSignerAddress, block.timestamp);
        copumpSignerAddress = newCopumpSignerAddress;
    }

    function deployLiquidity(address tokenAddress) external onlyOwner {
        TokenInfo storage tokenInfo = tokenInfos[tokenAddress];
        require(tokenInfo.exists, "Token does not exist");
        require(tokenInfo.listedAddress == address(0), "Token has been listed");

        DummyToken token = DummyToken(tokenAddress);
        _deployLiquidityPool(token, tokenInfo, tokenInfo.funding);
    }

    // Allow anyone to create their own token
    function createToken(
        string calldata name,
        string calldata symbol,
        TokenInitMetadata calldata metadata
    ) external payable returns (address) {
        require(msg.value == creationFee, "Incorrect fee");

        DummyToken token = new DummyToken(name, symbol);
        address tokenAddress = address(token);
        emit TokenCreated(
            tokenAddress,
            msg.sender,
            name,
            symbol,
            metadata,
            msg.value,
            block.timestamp
        );
        tokenInfos[tokenAddress] = TokenInfo(0, true, address(0), msg.sender);
        (bool success, ) = payable(owner()).call{value: msg.value}("");
        require(success, "Transfer to owner failed");

        return tokenAddress;
    }

    // Allow clients to buy tokens. Mints amount and receives ETH.
    // Amount is not scaled with decimals
    function buyToken(
        address tokenAddress,
        uint256 desiredAmount,
        uint256 scaledSlippagePercent
    ) external payable {
        require(desiredAmount != 0, "Amount cannot be 0");
        require(scaledSlippagePercent <= MAX_SCALED_SLIPPAGE_PERCENT, "Slippage percent is too high");

        uint256 fee = _makeBuy(tokenAddress, desiredAmount, scaledSlippagePercent);
        _distributeFee(tokenInfos[tokenAddress].creatorAddress, address(0), fee);
    }

    function buyTokenRef(
        address tokenAddress,
        uint256 desiredAmount,
        uint256 scaledSlippagePercent,
        address referrerAddress,
        bytes calldata referrerSignature
    ) external payable {
        require(desiredAmount != 0, "Amount cannot be 0");
        require(scaledSlippagePercent <= MAX_SCALED_SLIPPAGE_PERCENT, "Slippage percent is too high");
        require(
            _isValidSigner(referrerAddress, referrerSignature),
            "Invalid referrer signature"
        );

        uint256 fee = _makeBuy(tokenAddress, desiredAmount, scaledSlippagePercent);
        _distributeFee(tokenInfos[tokenAddress].creatorAddress, referrerAddress, fee);
    }

    // Allow clients to sell tokens. Burns amount and sends ETH.
    // Amount is not scaled with decimals
    function sellToken(
        address tokenAddress,
        uint256 amount,
        uint256 minEthExpected
    ) external {
        require(amount != 0, "Amount cannot be 0");

        uint256 fee = _makeSell(tokenAddress, amount, minEthExpected);
        _distributeFee(tokenInfos[tokenAddress].creatorAddress, address(0), fee);
    }

    function sellTokenRef(
        address tokenAddress,
        uint256 amount,
        uint256 minEthExpected,
        address referrerAddress,
        bytes calldata referrerSignature
    ) external {
        require(amount != 0, "Amount cannot be 0");
        require(
            _isValidSigner(referrerAddress, referrerSignature),
            "Invalid referrer signature"
        );

        uint256 fee = _makeSell(tokenAddress, amount, minEthExpected);
        _distributeFee(tokenInfos[tokenAddress].creatorAddress, referrerAddress, fee);
    }

    // Allow buyers to claim their tokens after token launching
    function claim(address tokenAddress) external {
        TokenInfo memory tokenInfo = tokenInfos[tokenAddress];
        require(tokenInfo.exists, "Token does not exist");
        require(tokenInfo.listedAddress != address(0), "Token has not been listed yet");

        DummyToken token = DummyToken(tokenAddress);
        uint256 balance = token.balanceOf(msg.sender);
        require(balance > 0, "No tokens to claim");

        emit TokenClaimed(tokenAddress, msg.sender, balance, block.timestamp);
        token.burn(msg.sender, balance);
        Token(tokenInfo.listedAddress).mint(msg.sender, balance);
    }

    // Show token's progress in a convinient way for backends
    function tokenState(
        address tokenAddress
    ) external view returns (TokenState memory) {
        TokenInfo memory tokenInfo = tokenInfos[tokenAddress];
        require(tokenInfo.exists, "Token does not exist");

        DummyToken token = DummyToken(tokenAddress);
        uint256 supply = token.totalSupply();
        return TokenState(tokenInfo.funding, supply, calculateMarketCap(supply));
    }

    // Calculates amount of ETH needed to buy the amount of the token.
    // Amount is not scaled with decimals.
    // This function also fixes inaccuracy that can accumulate due to approximate
    // calculations like e^kx. For example, without this fix,
    // calculated weis for a purchase of 100_000 tokens would not equal to
    // the sum of weis for 100 purchases of 1_000 tokens each.
    // So in the end, amount of purchased tokens would be the same, but amount
    // of funds would not
    function calculateTotalBuyPriceForContract(
        address tokenAddress,
        uint256 amount
    ) public view returns (uint256) {
        DummyToken token = DummyToken(tokenAddress);
        uint256 supply = token.totalSupply() / DECIMALS;
        uint256 currentFunds = tokenInfos[tokenAddress].funding;
        return calculateTotalBuyPrice(0, supply + amount) - currentFunds;
    }

    // Calculates amount of ETH needed to sell the amount of the token.
    // Amount is not scaled with decimals.
    // This function also fixes inaccuracy that can accumulate due to approximate
    // calculations like e^kx. For example, without this fix,
    // calculated weis for a sell of 100_000 tokens would not equal to
    // the sum of weis for 100 sells of 1_000 tokens each.
    // So in the end, amount of sold tokens would be the same, but amount
    // of funds would not
    function calculateTotalSellPriceForContract(
        address tokenAddress,
        uint256 amount
    ) public view returns (uint256) {
        DummyToken token = DummyToken(tokenAddress);
        uint256 supply = token.totalSupply() / DECIMALS;
        uint256 currentFunds = tokenInfos[tokenAddress].funding;
        return currentFunds - calculateTotalBuyPrice(0, supply - amount);
    }

    // Calculates fee respecting current fee percent
    function calculateFee(uint256 totalPrice) public view returns (uint256) {
        return totalPrice * feePercent / 100;
    }

    // Calculate purchase parameters with respect to the slippage
    function calculateBuyPlan(
        address tokenAddress,
        uint256 desiredAmount,
        uint256 value,
        uint256 scaledSlippagePercent
    ) public view returns (uint256, uint256, uint256) {
        uint256 expectedPrice = calculateTotalBuyPriceForContract(tokenAddress, desiredAmount);
        uint256 expectedFee = calculateFee(expectedPrice);
        if (value == expectedPrice + expectedFee) {
            // No slippage, exact match
            return (desiredAmount, expectedPrice, expectedFee);
        }

        uint256 fee = value / (100 / feePercent + 1);
        uint256 budget = value - fee;
        uint256 lowerAmountLimit;
        uint256 upperAmountLimit;
        if (expectedPrice > budget) {
            // Negative slippage. Not enough budget to buy desired amount.
            uint256 minSlippageAmountLimit =
                desiredAmount - desiredAmount * scaledSlippagePercent / 100 / SLIPPAGE_PERCENT_SCALING_FACTOR;
            uint256 minSlippagePrice = calculateTotalBuyPriceForContract(tokenAddress, minSlippageAmountLimit);
            if (budget < minSlippagePrice) {
                revert BelowSlippageLimit(budget, minSlippagePrice, minSlippageAmountLimit);
            }
            // The smallest amount of tokens that can be bought is minSlippageAmountLimit.
            lowerAmountLimit = minSlippageAmountLimit;
            upperAmountLimit = desiredAmount;
        } else {
            // Positive slippage.
            // The smallest amount of tokens that can be bought is desiredAmount.
            uint256 maxSlippageLimit =
                desiredAmount + desiredAmount * scaledSlippagePercent / 100 / SLIPPAGE_PERCENT_SCALING_FACTOR;
            uint256 maxSlippagePrice = calculateTotalBuyPriceForContract(tokenAddress, maxSlippageLimit);
            if (budget > maxSlippagePrice) {
                revert AboveSlippageLimit(budget, maxSlippagePrice, maxSlippageLimit);
            }
            lowerAmountLimit = desiredAmount;
            upperAmountLimit = maxSlippageLimit;
        }
        (uint256 closestAmount, uint256 closestPrice) =
            _binSearchBestBuyParameters(
                tokenAddress,
                budget,
                lowerAmountLimit,
                upperAmountLimit
            );
        return (closestAmount, closestPrice, fee);
    }

    // Calculates marketcap as supply times price per token.
    // supply is scaled with decimals
    function calculateMarketCap(uint256 supply) public view returns (uint256) {
        uint256 unscaledSupply = supply / DECIMALS;
        uint256 price = calculateTotalBuyPrice(unscaledSupply, 1);
        return unscaledSupply * price;
    }

    // Auxiliary functions that helps to calculate buying price with respect
    // to the bonding curve (relation between token price and supply).
    // Supply and amount are not scaled with decimals
    function calculateTotalBuyPrice(
        uint256 supply,
        uint256 amount
    ) public view returns (uint256) {
        uint256 expKx1 = _expX(SCALED_K * supply);
        uint256 expKx2 = _expX(SCALED_K * (supply + amount));
        uint256 totalPrice = INITIAL_PRICE * (expKx2 - expKx1) / SCALED_K;
        return totalPrice;
    }

    // Check and create a liquidity pool with a pair token/WETH.
    function _deployLiquidityPool(
        DummyToken token,
        TokenInfo storage tokenInfo,
        uint256 funding
    ) internal virtual;

    // Divide and distribute fee between owner, referrer and token creator
    function _distributeFee(
        address creatorAddress,
        address referrerAddress,
        uint256 fee
    ) private {
        uint256 creatorFee = tokenCreatorFeePercent * fee / 100;
        uint256 referrerFee = 0;
        if (referrerAddress != address(0)) {
            referrerFee = referrerFeePercent * fee / 100;
        }
        uint256 ownerFee = fee - creatorFee - referrerFee;

        (bool creatorSendSuccess, ) = payable(creatorAddress).call{value: creatorFee}("");
        require(creatorSendSuccess, "Fee transfer to creator failed");

        (bool ownerSendSuccess, ) = payable(owner()).call{value: ownerFee}("");
        require(ownerSendSuccess, "Fee transfer to owner failed");

        if (referrerAddress == address(0)) return;

        (bool referrerSendSuccess, ) = payable(referrerAddress).call{value: referrerFee}("");
        require(referrerSendSuccess, "Fee transfer to referrer failed");
    }

    function _makeBuy(
        address tokenAddress,
        uint256 desiredAmount,
        uint256 scaledSlippagePercent
    ) private returns (uint256) {
        TokenInfo storage tokenInfo = tokenInfos[tokenAddress];
        require(tokenInfo.exists, "Token does not exist");
        require(tokenInfo.listedAddress == address(0), "Token has been listed");

        (uint256 amount, uint256 totalPrice, uint256 fee) =
            calculateBuyPlan(tokenAddress, desiredAmount, msg.value, scaledSlippagePercent);
        uint256 actualAmount = amount * DECIMALS;
        DummyToken token = DummyToken(tokenAddress);
        uint256 totalSupply = token.totalSupply();
        require(actualAmount <= MAX_SUPPLY - totalSupply, "No supply");

        uint256 newFunding = tokenInfo.funding + totalPrice;
        uint256 newSupply = totalSupply + actualAmount;
        emit TokenPurchased(
            tokenAddress,
            msg.sender,
            actualAmount,
            totalPrice,
            fee,
            TokenState(newFunding, newSupply, calculateMarketCap(newSupply)),
            block.timestamp
        );
        tokenInfo.funding = newFunding;

        // Create a liquidity pool
        if (newFunding >= FUND_THRESHOLD) {
            _deployLiquidityPool(token, tokenInfo, newFunding);
        }

        token.mint(msg.sender, actualAmount);
        uint256 restValue = msg.value - totalPrice - fee;
        if (restValue > 0) {
            (bool senderTransferSuccess, ) = payable(msg.sender).call{value: restValue}("");
            require(senderTransferSuccess, "Transfer to sender failed");
        }
        return fee;
    }

    function _makeSell(
        address tokenAddress,
        uint256 amount,
        uint256 minEthExpected
    ) private returns (uint256) {
        TokenInfo storage tokenInfo = tokenInfos[tokenAddress];
        require(tokenInfo.exists, "Token does not exist");
        require(tokenInfo.listedAddress == address(0), "Token has been listed");

        DummyToken token = DummyToken(tokenAddress);
        uint256 actualAmount = amount * DECIMALS;
        require(actualAmount <= token.balanceOf(msg.sender), "Not enough tokens");

        uint256 totalPrice = calculateTotalSellPriceForContract(tokenAddress, amount);
        uint256 fee = calculateFee(totalPrice);
        uint256 valueToSend = totalPrice - fee;
        require(valueToSend >= minEthExpected, "Price is below minEthExpected");

        uint256 currentFunding = tokenInfo.funding;
        require(currentFunding >= totalPrice, "Not enough fundings to return");

        uint256 newFunding = currentFunding - totalPrice;
        uint256 newSupply = token.totalSupply() - actualAmount;
        uint256 newMarketCap = calculateMarketCap(newSupply);
        emit TokenSold(
            tokenAddress,
            msg.sender,
            actualAmount,
            totalPrice,
            fee,
            TokenState(newFunding, newSupply, newMarketCap),
            block.timestamp
        );
        tokenInfo.funding = newFunding;
        token.burn(msg.sender, actualAmount);

        (bool senderTransferSuccess, ) = payable(msg.sender).call{value: valueToSend}("");
        require(senderTransferSuccess, "Transfer to sender failed");

        return fee;
    }

    // Since solidity does not have floats we should use some approximating
    // algorithms like Newton–Raphson method or binary search since they will be
    // the most accurate. The problem with former is that it works good for small
    // budget since the small amount of iterations needed. But the more the
    // budget, the more steps needed to do to calculate the result.
    // For budget ~= SCALING_FACTOR, amount of steps is so huge that it requires
    // millions of gas which is not applicable. We use binary search here.
    // It is also iterative but we can set the amount of steps so we keep the
    // balance between accuracy and gas usage
    function _binSearchBestBuyParameters(
        address tokenAddress,
        uint256 budget,
        uint256 lowerAmountLimit,
        uint256 upperAmountLimit
    ) private view returns (uint256, uint256) {
        DummyToken token = DummyToken(tokenAddress);
        uint256 supply = token.totalSupply() / DECIMALS;
        uint256 funds = tokenInfos[tokenAddress].funding;
        // We are guaranteed that lowerAmountLimit always can be bought so
        // we immediately set this value as closestAmount
        uint256 closestAmount = lowerAmountLimit;
        uint256 startAmount = lowerAmountLimit;
        uint256 endAmount = upperAmountLimit;
        // The more steps, the more accurate result will be. But also more gas
        // will be consumed
        for (uint256 i = 1; i < 10; i++) {
            uint256 middleAmount = (startAmount + endAmount) / 2;
            uint256 price = calculateTotalBuyPrice(0, supply + middleAmount) - funds;
            if (price == budget) return (middleAmount, price);

            if (price < budget) {
                closestAmount = middleAmount;
                startAmount = middleAmount;
                endAmount = upperAmountLimit;
            } else {
                startAmount = lowerAmountLimit;
                endAmount = middleAmount;
            }
        }
        uint256 closestPrice = calculateTotalBuyPrice(0, supply + closestAmount) - funds;
        return (closestAmount, closestPrice);
    }

    // Check if the message has been signed by the
    // referrer signature signer
    function _isValidSigner(
        address referrerAddress,
        bytes calldata signature
    ) public view returns (bool) {
        bytes memory message = abi.encodePacked(msg.sender, referrerAddress);
        bytes32 signedMessageHash = message.toEthSignedMessageHash();
        address signerAddress = signedMessageHash.recover(signature);
        return signerAddress == copumpSignerAddress;
    }

    // Helps to calculate e^x with the MacLaurin series of Exponential function.
    // https://en.wikipedia.org/wiki/Taylor_series#Exponential_function
    // For example, the first term of the series is x^0/0! = 1
    // the second term of the series (term2) is x^1/1! = x
    // the third term (term3) is x^2/2!
    // The fourth term (term4) is x^3/3!
    // But the latter can also be expressed with the third term that saves
    // some computation time
    // term4 = x^3 / 3! = (x * x^2) / (3 * 2!) = x^2 / 2! * (x / 3) = term3 * x / 3
    // So x^i / i! = term(i - 1) * x / i
    // where term(i - 1) is a previous term.
    // Since solidity does not support float numbers, we should minimize
    // precision loss using SCALING_FACTOR
    function _expX(uint256 x) private pure returns (uint256) {
        // start with scaled 1 since x^0/0! is 1
        uint256 sum = SCALING_FACTOR;
        // the first term is scaled 1 and is already in the sum
        uint256 term = SCALING_FACTOR;

        // We start from the second term (i = 1).
        // The bigger MAX_ITERATIONS the more accurate the result. But it also
        // takes more gas to compute each step.
        for (uint256 i = 1; i < MAX_ITERATIONS; i++) {
            term = (term * x) / (SCALING_FACTOR * i);
            sum += term;
            // Since the sequence is infinite, we should just stop
            // when a term is so small that calculating further makes no sense
            if (term < TOLERANCE) { break; }
        }
        return sum;
    }
}
