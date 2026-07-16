// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IERC20 {
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function transfer(address to, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

interface IChainlink {
    function latestRoundData() external view returns (uint80, int256, uint256, uint256, uint80);
    function decimals() external view returns (uint8);
}

interface IFactory {
    function yearlyFeeBps() external view returns (uint256);
}

contract Convertible {
    string public name;
    string public symbol;
    uint8 public constant decimals = 18;

    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    IERC20 public immutable collateralToken;
    IChainlink public immutable priceFeed;
    uint256 public immutable collateralFactor; // bps, e.g. 8000 = 80%
    uint256 public immutable maturity;
    uint256 public immutable conversionPrice; // debt per collateral unit (scaled by 1e18)
    uint256 public immutable liquidationIncentive; // bps, e.g. 500 = 5%
    uint8 public immutable collateralDecimals;
    uint8 public immutable priceFeedDecimals;
    address public immutable factory;

    mapping(address => uint256) public collateral;
    mapping(address => uint256) public debt;
    uint256 public totalDebt;
    uint256 public constant DUST_THRESHOLD = 100e18; // $100 - collateral value below this can be written off

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event Adjust(address indexed user, int256 collateralDelta, int256 debtDelta);
    event Liquidate(address indexed liquidator, address indexed borrower, uint256 debtRepaid, uint256 collateralSeized);
    event Convert(address indexed converter, address indexed borrower, uint256 debtAmount, uint256 collateralReceived);
    event Redeem(address indexed redeemer, address indexed borrower, uint256 debtAmount, uint256 collateralReceived);
    event WriteOff(address indexed caller, address indexed borrower, uint256 debtWrittenOff, uint256 collateralSeized);

    constructor(
        address _collateralToken,
        address _priceFeed,
        uint256 _collateralFactor,
        uint256 _maturity,
        uint256 _conversionPrice,
        uint256 _liquidationIncentive
    ) {
        require(_collateralToken != address(0), "invalid collateral");
        require(_priceFeed != address(0), "invalid price feed");
        require(_collateralFactor > 0 && _collateralFactor <= 9000, "invalid collateral factor");
        require(_maturity > block.timestamp, "maturity in past");
        require(_conversionPrice > 0, "invalid conversion price");
        require(_liquidationIncentive <= 1000, "incentive too high");

        collateralToken = IERC20(_collateralToken);
        priceFeed = IChainlink(_priceFeed);
        collateralFactor = _collateralFactor;
        maturity = _maturity;
        conversionPrice = _conversionPrice;
        liquidationIncentive = _liquidationIncentive;
        factory = msg.sender;

        collateralDecimals = IERC20(_collateralToken).decimals();
        priceFeedDecimals = IChainlink(_priceFeed).decimals();
        string memory collateralSymbol = IERC20(_collateralToken).symbol();

        // Build name and symbol
        string memory priceStr = _uint2str(_conversionPrice / 1e18);
        (string memory monthStr, string memory dayStr, string memory yearStr, string memory monthName) = _parseDate(_maturity);

        // Symbol: coETH-2000-17JUN25
        symbol = string(abi.encodePacked("co", collateralSymbol, "-", priceStr, "-", dayStr, monthStr, yearStr));

        // Name: 2000 ETH Convertible June 17, 2025
        name = string(abi.encodePacked(priceStr, " ", collateralSymbol, " Convertible ", monthName, " ", dayStr, ", 20", yearStr));
    }

    function _uint2str(uint256 value) internal pure returns (string memory) {
        if (value == 0) return "0";
        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits--;
            buffer[digits] = bytes1(uint8(48 + value % 10));
            value /= 10;
        }
        return string(buffer);
    }

    function _parseDate(uint256 timestamp) internal pure returns (string memory monthStr, string memory dayStr, string memory yearStr, string memory monthName) {
        // Convert timestamp to date components
        uint256 z = timestamp / 86400 + 719468;
        uint256 era = z / 146097;
        uint256 doe = z - era * 146097;
        uint256 yoe = (doe - doe / 1460 + doe / 36524 - doe / 146096) / 365;
        uint256 y = yoe + era * 400;
        uint256 doy = doe - (365 * yoe + yoe / 4 - yoe / 100);
        uint256 mp = (5 * doy + 2) / 153;
        uint256 d = doy - (153 * mp + 2) / 5 + 1;
        uint256 m = mp < 10 ? mp + 3 : mp - 9;
        if (m <= 2) y++;

        // Month abbreviations for symbol (3 letters uppercase)
        string[12] memory months = ["JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"];
        // Full month names for name
        string[12] memory fullMonths = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

        monthStr = months[m - 1];
        monthName = fullMonths[m - 1];
        dayStr = _uint2str(d);
        yearStr = _uint2str(y % 100);
        if (y % 100 < 10) yearStr = string(abi.encodePacked("0", yearStr));
    }

    // ERC20

    function transfer(address to, uint256 amount) external returns (bool) {
        balanceOf[msg.sender] -= amount;
        unchecked { balanceOf[to] += amount; }
        emit Transfer(msg.sender, to, amount);
        return true;
    }

    function approve(address spender, uint256 amount) external returns (bool) {
        allowance[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    function transferFrom(address from, address to, uint256 amount) external returns (bool) {
        if (allowance[from][msg.sender] != type(uint256).max) {
            allowance[from][msg.sender] -= amount;
        }
        balanceOf[from] -= amount;
        unchecked { balanceOf[to] += amount; }
        emit Transfer(from, to, amount);
        return true;
    }

    // Core

    function adjust(int256 collateralDelta, int256 debtDelta) external {
        // Apply collateral changes
        if (collateralDelta > 0) {
            _safeTransferFrom(address(collateralToken), msg.sender, address(this), uint256(collateralDelta));
            collateral[msg.sender] += uint256(collateralDelta);
        } else if (collateralDelta < 0) {
            collateral[msg.sender] -= uint256(-collateralDelta);
            _safeTransfer(address(collateralToken), msg.sender, uint256(-collateralDelta));
        }

        // Apply debt changes
        if (debtDelta > 0) {
            uint256 borrowAmount = uint256(debtDelta);
            uint256 timeRemaining = maturity - block.timestamp; // this reverts if maturity is in the past, intentionally
            uint256 yearlyFeeBps = IFactory(factory).yearlyFeeBps();
            uint256 fee = borrowAmount * yearlyFeeBps * timeRemaining / (365 days * 10000);
            debt[msg.sender] += borrowAmount + fee;
            totalSupply += borrowAmount + fee;
            totalDebt += borrowAmount + fee;
            unchecked {
                balanceOf[msg.sender] += borrowAmount;
                balanceOf[factory] += fee;
            }
            emit Transfer(address(0), msg.sender, borrowAmount);
            if (fee > 0) emit Transfer(address(0), factory, fee);
        } else if (debtDelta < 0) {
            uint256 repayAmount = uint256(-debtDelta);
            debt[msg.sender] -= repayAmount;
            balanceOf[msg.sender] -= repayAmount;
            totalSupply -= repayAmount;
            totalDebt -= repayAmount;
            emit Transfer(msg.sender, address(0), repayAmount);
        }

        require(_isHealthy(msg.sender), "undercollateralized");
        emit Adjust(msg.sender, collateralDelta, debtDelta);
    }

    function liquidate(address borrower, uint256 debtAmount) external {
        require(!_isHealthy(borrower), "healthy");

        uint256 price = _getPrice();
        uint256 collateralSeized = debtAmount * (10 ** collateralDecimals) * (10000 + liquidationIncentive) / (price * 10000);

        debt[borrower] -= debtAmount;
        collateral[borrower] -= collateralSeized;
        balanceOf[msg.sender] -= debtAmount;
        totalSupply -= debtAmount;
        totalDebt -= debtAmount;

        _safeTransfer(address(collateralToken), msg.sender, collateralSeized);
        emit Transfer(msg.sender, address(0), debtAmount);
        emit Liquidate(msg.sender, borrower, debtAmount, collateralSeized);

        writeOff(borrower);
    }

    function convert(address borrower, uint256 supplyAmount) external {
        require(block.timestamp < maturity, "matured");

        // Calculate effective debt based on exchange rate
        uint256 effectiveDebt = totalSupply > 0 && totalDebt < totalSupply
            ? supplyAmount * totalDebt / totalSupply
            : supplyAmount;

        // conversionPrice is debt per collateral (scaled 1e18), so collateral = debt * 1e18 / conversionPrice
        // then scale to collateral decimals
        uint256 collateralAmount = effectiveDebt * (10 ** collateralDecimals) / conversionPrice;

        debt[borrower] -= effectiveDebt;
        collateral[borrower] -= collateralAmount;
        balanceOf[msg.sender] -= supplyAmount;
        totalSupply -= supplyAmount;
        totalDebt -= effectiveDebt;

        _safeTransfer(address(collateralToken), msg.sender, collateralAmount);
        emit Transfer(msg.sender, address(0), supplyAmount);
        emit Convert(msg.sender, borrower, supplyAmount, collateralAmount);
    }

    function redeem(address borrower, uint256 supplyAmount) external {
        require(block.timestamp > maturity, "not matured");

        // Calculate effective debt based on exchange rate
        uint256 effectiveDebt = totalSupply > 0 && totalDebt < totalSupply
            ? supplyAmount * totalDebt / totalSupply
            : supplyAmount;

        uint256 price = _getPrice();
        uint256 collateralAmount = effectiveDebt * (10 ** collateralDecimals) / price;

        debt[borrower] -= effectiveDebt;
        collateral[borrower] -= collateralAmount;
        balanceOf[msg.sender] -= supplyAmount;
        totalSupply -= supplyAmount;
        totalDebt -= effectiveDebt;

        _safeTransfer(address(collateralToken), msg.sender, collateralAmount);
        emit Transfer(msg.sender, address(0), supplyAmount);
        emit Redeem(msg.sender, borrower, supplyAmount, collateralAmount);
    }

    /// @notice Writes off dust position, giving collateral to caller. Never reverts.
    /// @param borrower The borrower whose position to write off
    /// @return success True if write-off occurred
    function writeOff(address borrower) public returns (bool success) {
        uint256 borrowerDebt = debt[borrower];
        uint256 borrowerCollateral = collateral[borrower];

        // Conditions: debt > 0, has collateral
        if (borrowerDebt == 0 || borrowerCollateral == 0) {
            return false;
        }

        // Get price safely (never revert)
        uint256 price;
        try priceFeed.latestRoundData() returns (uint80, int256 answer, uint256, uint256, uint80) {
            if (answer <= 0) return false;
            price = uint256(answer) * (10 ** (18 - priceFeedDecimals));
        } catch {
            return false;
        }

        // Check: collateral value < DUST_THRESHOLD (dust) and debt > collateral value (bad debt)
        uint256 collateralValue = borrowerCollateral * price / (10 ** collateralDecimals);
        if (collateralValue >= DUST_THRESHOLD || borrowerDebt <= collateralValue) {
            return false;
        }

        // Transfer collateral first (trusted token, no reentrancy concern)
        (bool transferred, bytes memory data) = address(collateralToken).call(
            abi.encodeWithSignature("transfer(address,uint256)", msg.sender, borrowerCollateral)
        );
        if (!transferred || (data.length > 0 && !abi.decode(data, (bool)))) {
            return false;
        }

        // Execute write-off
        debt[borrower] = 0;
        collateral[borrower] = 0;
        totalDebt -= borrowerDebt;

        emit WriteOff(msg.sender, borrower, borrowerDebt, borrowerCollateral);
        return true;
    }

    /// @notice Returns redemption exchange rate for UI
    /// @return debtPerSupply Debt value per 1e18 supply tokens (1e18 = no bad debt)
    /// @return collateralPerSupply Collateral per 1e18 supply tokens at current price
    function exchangeRate() external view returns (uint256 debtPerSupply, uint256 collateralPerSupply) {
        if (totalSupply == 0) {
            return (1e18, 0);
        }

        debtPerSupply = totalDebt >= totalSupply ? 1e18 : totalDebt * 1e18 / totalSupply;

        uint256 price = _getPrice();
        collateralPerSupply = totalDebt * 1e18 * (10 ** collateralDecimals) / (totalSupply * price);
    }

    // Internal

    function _getPrice() internal view returns (uint256) {
        (, int256 answer,,,) = priceFeed.latestRoundData();
        require(answer > 0, "invalid price");
        // Normalize to 18 decimals: price * 10^(18 - priceFeedDecimals)
        return uint256(answer) * (10 ** (18 - priceFeedDecimals));
    }

    function _isHealthy(address user) internal view returns (bool) {
        uint256 userDebt = debt[user];
        if (userDebt == 0) return true;

        uint256 userCollateral = collateral[user];
        uint256 price = _getPrice();

        // maxDebt in debt token terms (18 decimals)
        // = userCollateral * price * collateralFactor / (10^collateralDecimals * 10000)
        uint256 maxDebt = userCollateral * price * collateralFactor / ((10 ** collateralDecimals) * 10000);

        // Conversion coverage: collateral >= debt * 10^collateralDecimals / conversionPrice
        uint256 requiredForConversion = userDebt * (10 ** collateralDecimals) / conversionPrice;

        return userDebt <= maxDebt && userCollateral >= requiredForConversion;
    }

    function _safeTransfer(address token, address to, uint256 value) internal {
        (bool success, bytes memory data) = token.call(abi.encodeWithSignature("transfer(address,uint256)", to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), "transfer failed");
    }

    function _safeTransferFrom(address token, address from, address to, uint256 value) internal {
        (bool success, bytes memory data) = token.call(abi.encodeWithSignature("transferFrom(address,address,uint256)", from, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), "transferFrom failed");
    }
}
