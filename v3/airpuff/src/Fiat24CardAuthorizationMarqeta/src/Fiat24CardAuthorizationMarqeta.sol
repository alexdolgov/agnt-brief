// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "./interfaces/IFiat24Account.sol";
import "./libraries/DigitsOfUint.sol";

error Fiat24CardAuthorizationMarqeta__NotOperator(address sender);
error Fiat24CardAuthorizationMarqeta__NotAuthorizer(address sender);
error Fiat24CardAuthorizationMarqeta__NotPauser(address sender);
error Fiat24CardAuthorizationMarqeta__Suspended();
error Fiat24CardAuthorizationMarqeta__NotValidSettlementCurrency(address settlementCurrency);
error Fiat24CardAuthorizationMarqeta__DefaultSettlementCurrencyIsNotEUR(address settlementCurrency);
error Fiat24CardAuthorizationMarqeta__NotRateUpdater(address sender);
error Fiat24CardAuthorizationMarqeta__InterchangeOutOfRange(uint256 value);

contract Fiat24CardAuthorizationMarqeta is Initializable, AccessControlUpgradeable, PausableUpgradeable {
    using DigitsOfUint for uint256;
    using SafeERC20Upgradeable for IERC20Upgradeable;

    bytes32 public constant OPERATOR_ADMIN_ROLE = keccak256("OPERATOR_ADMIN_ROLE");
    bytes32 public constant AUTHORIZER_ROLE = keccak256("AUTHORIZER_ROLE");
    bytes32 public constant RATES_UPDATER_OPERATOR_ROLE = keccak256("RATES_UPDATER_OPERATOR_ROLE");
    bytes32 public constant RATES_UPDATER_ROBOT_ROLE = keccak256("RATES_UPDATER_ROBOT_ROLE");
    bytes32 public constant PAUSE_ROLE = keccak256("PAUSE_ROLE");
    bytes32 public constant UNPAUSE_ROLE = keccak256("UNPAUSE_ROLE");

    uint256 public constant CARD_BOOKED = 9110;
    uint256 public constant SUNDRY = 9103;
    uint256 public constant TREASURY = 9100;

    address public fiat24AccountAddress;
    address public eur24Address;
    address public usd24Address;
    address public chf24Address;
    address public cnh24Address;
    address public gbp24Address;

    mapping(address => bool) public validXXX24Tokens;
    mapping(string => address) public XXX24Tokens;
    mapping(address => mapping(address => uint256)) public exchangeRates;

    uint256 public interchange;
    bool public marketClosed;
    uint256 public exchangeSpread;
    uint256 public marketClosedSpread;

    event Authorized(string authorizationToken, uint256 indexed tokenId, address indexed sender, string cardId, address cardCurrency, uint256 paidAmount);
    event Incremented(string authorizationToken, uint256 indexed tokenId, address indexed sender, string cardId, address cardCurrency, uint256 paidAmount);
    event Adviced(
        string adviceToken,
        string originalAuthorizationToken,
        uint256 indexed tokenId,
        address indexed sender,
        string cardId,
        address cardCurrency,
        uint256 paidAmount
    );
    event Reversed(
        string adviceToken,
        string originalAuthorizationToken,
        uint256 indexed tokenId,
        address indexed sender,
        string cardId,
        address cardCurrency,
        uint256 paidAmount
    );
    event ExchangeRatesUpdatedByOperator(address indexed sender, uint256 usd_eur, uint256 usd_chf, uint256 usd_gbp, uint256 usd_cnh, bool marketClosed);
    event ExchangeRatesUpdatedByRobot(address indexed sender, uint256 usd_eur, uint256 usd_chf, uint256 usd_gbp, uint256 usd_cnh, bool marketClosed);
    event FiatTokenAndRateAddedInMarqeta(address indexed fiatToken, uint256 indexed rateUsdcToFiat, string fiatName);
    event ExchangeRateUpdatedByOperator(address indexed fiatToken, uint256 oldRate, uint256 newRate, bool _isMarketClosed);
    event ExchangeRateUpdatedByRobot(address indexed fiatToken, uint256 oldRate, uint256 newRate, bool _isMarketClosed);

    function initialize(
        address admin,
        address fiat24AccountAddress_,
        address eur24Address_,
        address usd24Address_,
        address chf24Address_,
        address gbp24Address_,
        address cnh24Address_
    ) public initializer {
        __AccessControl_init_unchained();
        __Pausable_init_unchained();
        _setupRole(DEFAULT_ADMIN_ROLE, admin);
        _setupRole(OPERATOR_ADMIN_ROLE, admin);
        fiat24AccountAddress = fiat24AccountAddress_;
        eur24Address = eur24Address_;
        usd24Address = usd24Address_;
        chf24Address = chf24Address_;
        gbp24Address = gbp24Address_;
        cnh24Address = cnh24Address_;
        validXXX24Tokens[eur24Address_] = true;
        validXXX24Tokens[usd24Address_] = true;
        validXXX24Tokens[chf24Address_] = true;
        validXXX24Tokens[gbp24Address_] = true;
        validXXX24Tokens[cnh24Address_] = true;
        XXX24Tokens["EUR"] = eur24Address_;
        XXX24Tokens["USD"] = usd24Address_;
        XXX24Tokens["CHF"] = chf24Address_;
        XXX24Tokens["GBP"] = gbp24Address_;
        XXX24Tokens["CNH"] = cnh24Address_; //CNH and CNY
        XXX24Tokens["CNY"] = cnh24Address_; //CNH and CNY
        exchangeRates[usd24Address][usd24Address] = 10000;
        exchangeRates[usd24Address][eur24Address] = 9168;
        exchangeRates[usd24Address][chf24Address] = 8632;
        exchangeRates[usd24Address][gbp24Address] = 7674;
        exchangeRates[usd24Address][cnh24Address] = 70885;
        marketClosed = false;
        exchangeSpread = 10150;
        marketClosedSpread = 10005;
        interchange = 1;
    }

    function authorize(
        string memory authorizationToken_,
        string memory cardId_,
        uint256 tokenId_,
        address cardCurrency_,
        string memory transactionCurrency_,
        address settlementCurrency_,
        uint256 transactionAmount_,
        uint256 settlementAmount_
    ) public {
        if (!(hasRole(AUTHORIZER_ROLE, _msgSender()))) revert Fiat24CardAuthorizationMarqeta__NotAuthorizer(_msgSender());
        if (paused()) revert Fiat24CardAuthorizationMarqeta__Suspended();
        if (!validXXX24Tokens[settlementCurrency_]) revert Fiat24CardAuthorizationMarqeta__NotValidSettlementCurrency(settlementCurrency_);
        address sender = IFiat24Account(fiat24AccountAddress).ownerOf(tokenId_);
        address booked = IFiat24Account(fiat24AccountAddress).ownerOf(CARD_BOOKED);
        address paidCurrency = cardCurrency_;
        uint256 paidAmount;

        if (validXXX24Tokens[XXX24Tokens[transactionCurrency_]]) {
            if (
                IERC20Upgradeable(XXX24Tokens[transactionCurrency_]).balanceOf(sender) >= transactionAmount_
                    && IERC20Upgradeable(XXX24Tokens[transactionCurrency_]).allowance(sender, address(this)) >= transactionAmount_
            ) {
                paidCurrency = XXX24Tokens[transactionCurrency_];
                paidAmount = transactionAmount_;
            } else {
                paidAmount = transactionAmount_ * getRate(XXX24Tokens[transactionCurrency_], cardCurrency_)
                    * getSpread(XXX24Tokens[transactionCurrency_], cardCurrency_, false) / 100000000;
            }
        } else {
            if (settlementCurrency_ != eur24Address) revert Fiat24CardAuthorizationMarqeta__DefaultSettlementCurrencyIsNotEUR(settlementCurrency_);
            paidAmount =
                settlementAmount_ * (100 + interchange) * getRate(eur24Address, cardCurrency_) * getSpread(eur24Address, cardCurrency_, false) / 10000000000;
        }

        IERC20Upgradeable(paidCurrency).safeTransferFrom(sender, booked, paidAmount);
        emit Authorized(authorizationToken_, tokenId_, sender, cardId_, paidCurrency, paidAmount);
    }

    function increment(
        string memory authorizationToken_,
        string memory cardId_,
        uint256 tokenId_,
        address cardCurrency_,
        string memory transactionCurrency_,
        address settlementCurrency_,
        uint256 transactionAmount_,
        uint256 settlementAmount_
    ) public {
        if (!(hasRole(AUTHORIZER_ROLE, _msgSender()))) revert Fiat24CardAuthorizationMarqeta__NotAuthorizer(_msgSender());
        if (paused()) revert Fiat24CardAuthorizationMarqeta__Suspended();
        if (!validXXX24Tokens[settlementCurrency_]) revert Fiat24CardAuthorizationMarqeta__NotValidSettlementCurrency(settlementCurrency_);
        address sender = IFiat24Account(fiat24AccountAddress).ownerOf(tokenId_);
        address booked = IFiat24Account(fiat24AccountAddress).ownerOf(CARD_BOOKED);
        address paidCurrency;
        uint256 paidAmount;

        if (validXXX24Tokens[XXX24Tokens[transactionCurrency_]]) {
            if (
                IERC20Upgradeable(XXX24Tokens[transactionCurrency_]).balanceOf(sender) >= transactionAmount_
                    && IERC20Upgradeable(XXX24Tokens[transactionCurrency_]).allowance(sender, address(this)) >= transactionAmount_
            ) {
                paidCurrency = XXX24Tokens[transactionCurrency_];
                paidAmount = transactionAmount_;
            } else {
                paidCurrency = cardCurrency_;
                paidAmount = transactionAmount_ * getRate(XXX24Tokens[transactionCurrency_], cardCurrency_)
                    * getSpread(XXX24Tokens[transactionCurrency_], cardCurrency_, false) / 100000000;
            }
        } else {
            if (settlementCurrency_ != eur24Address) revert Fiat24CardAuthorizationMarqeta__DefaultSettlementCurrencyIsNotEUR(settlementCurrency_);
            paidCurrency = cardCurrency_;
            paidAmount =
                settlementAmount_ * (100 + interchange) * getRate(eur24Address, cardCurrency_) * getSpread(eur24Address, cardCurrency_, false) / 10000000000;
        }

        IERC20Upgradeable(paidCurrency).safeTransferFrom(sender, booked, paidAmount);

        emit Incremented(authorizationToken_, tokenId_, sender, cardId_, paidCurrency, paidAmount);
    }

    function advice(
        string memory authorizationToken_,
        string memory originalAuthorizationToken_,
        string memory cardId_,
        uint256 tokenId_,
        string memory transactionCurrency_,
        address settlementCurrency_,
        uint256 transactionAmount_,
        uint256 settlementAmount_,
        address originalPaidCurrency_
    ) public {
        if (!(hasRole(AUTHORIZER_ROLE, _msgSender()))) revert Fiat24CardAuthorizationMarqeta__NotAuthorizer(_msgSender());
        if (paused()) revert Fiat24CardAuthorizationMarqeta__Suspended();
        if (!validXXX24Tokens[settlementCurrency_]) revert Fiat24CardAuthorizationMarqeta__NotValidSettlementCurrency(settlementCurrency_);
        address sender = IFiat24Account(fiat24AccountAddress).ownerOf(tokenId_);
        address booked = IFiat24Account(fiat24AccountAddress).ownerOf(CARD_BOOKED);
        address paidCurrency = originalPaidCurrency_; // Always pay back to the same currency
        uint256 paidAmount;

        if (validXXX24Tokens[XXX24Tokens[transactionCurrency_]]) {
            paidAmount = transactionAmount_ * getRate(XXX24Tokens[transactionCurrency_], originalPaidCurrency_)
                * getSpread(XXX24Tokens[transactionCurrency_], originalPaidCurrency_, false) / 100000000;
        } else {
            if (settlementCurrency_ != eur24Address) revert Fiat24CardAuthorizationMarqeta__DefaultSettlementCurrencyIsNotEUR(settlementCurrency_);
            paidAmount = settlementAmount_ * getRate(eur24Address, originalPaidCurrency_) * getSpread(eur24Address, originalPaidCurrency_, false) / 100000000;
        }

        // Booking from #9110 to Client
        IERC20Upgradeable(paidCurrency).safeTransferFrom(booked, sender, paidAmount);

        emit Adviced(authorizationToken_, originalAuthorizationToken_, tokenId_, sender, cardId_, paidCurrency, paidAmount);
    }

    function reverse(
        string memory authorizationToken_,
        string memory originalAuthorizationToken_,
        string memory cardId_,
        uint256 tokenId_,
        string memory transactionCurrency_,
        address settlementCurrency_,
        uint256 transactionAmount_,
        uint256 settlementAmount_,
        address originalPaidCurrency_
    ) public {
        if (!(hasRole(AUTHORIZER_ROLE, _msgSender()))) revert Fiat24CardAuthorizationMarqeta__NotAuthorizer(_msgSender());
        if (paused()) revert Fiat24CardAuthorizationMarqeta__Suspended();
        if (!validXXX24Tokens[settlementCurrency_]) revert Fiat24CardAuthorizationMarqeta__NotValidSettlementCurrency(settlementCurrency_);
        address sender = IFiat24Account(fiat24AccountAddress).ownerOf(tokenId_);
        address booked = IFiat24Account(fiat24AccountAddress).ownerOf(CARD_BOOKED);
        address paidCurrency = originalPaidCurrency_; // Always pay back to the same currency
        uint256 paidAmount;

        if (validXXX24Tokens[XXX24Tokens[transactionCurrency_]]) {
            paidAmount = transactionAmount_ * getRate(XXX24Tokens[transactionCurrency_], originalPaidCurrency_)
                * getSpread(XXX24Tokens[transactionCurrency_], originalPaidCurrency_, false) / 100000000;
        } else {
            if (settlementCurrency_ != eur24Address) revert Fiat24CardAuthorizationMarqeta__DefaultSettlementCurrencyIsNotEUR(settlementCurrency_);
            paidAmount = settlementAmount_ * (100 + interchange) * getRate(eur24Address, originalPaidCurrency_)
                * getSpread(eur24Address, originalPaidCurrency_, false) / 10000000000;
        }

        // Booking from #9110 to Client
        IERC20Upgradeable(paidCurrency).safeTransferFrom(booked, sender, paidAmount);

        emit Reversed(authorizationToken_, originalAuthorizationToken_, tokenId_, sender, cardId_, paidCurrency, paidAmount);
    }

    function getRate(address _inputToken, address _outputToken) public view returns (uint256) {
        if (_inputToken == _outputToken) {
            return 10000;
        }
        if (_inputToken == usd24Address || _outputToken == usd24Address) {
            return
                exchangeRates[_inputToken][_outputToken] == 0 ? 10000 ** 2 / exchangeRates[_outputToken][_inputToken] : exchangeRates[_inputToken][_outputToken];
        } else {
            return (10000 ** 2 / exchangeRates[usd24Address][_inputToken]) * exchangeRates[usd24Address][_outputToken] / 10000;
        }
    }

    function getSpread(address _inputToken, address _outputToken, bool exactOut) public view returns (uint256) {
        uint256 totalSpread = 10000;

        if (_inputToken == _outputToken) {
            return totalSpread;
        }
        if (!(_inputToken == usd24Address && _outputToken == usd24Address)) {
            totalSpread = marketClosed ? exchangeSpread * marketClosedSpread / 10000 : exchangeSpread;
            if (exactOut) {
                totalSpread = 10000 * 10000 / totalSpread;
            }
        }
        return totalSpread;
    }

    function updateExchangeRates(uint256 _usd_eur, uint256 _usd_chf, uint256 _usd_gbp, uint256 _usd_cnh, bool _isMarketClosed) external {
        if (hasRole(RATES_UPDATER_OPERATOR_ROLE, _msgSender())) {
            exchangeRates[usd24Address][eur24Address] = _usd_eur;
            exchangeRates[usd24Address][chf24Address] = _usd_chf;
            exchangeRates[usd24Address][gbp24Address] = _usd_gbp;
            exchangeRates[usd24Address][cnh24Address] = _usd_cnh;
            marketClosed = _isMarketClosed;
            emit ExchangeRatesUpdatedByOperator(
                _msgSender(),
                exchangeRates[usd24Address][eur24Address],
                exchangeRates[usd24Address][chf24Address],
                exchangeRates[usd24Address][gbp24Address],
                exchangeRates[usd24Address][cnh24Address],
                marketClosed
            );
        } else if ((hasRole(RATES_UPDATER_ROBOT_ROLE, _msgSender()))) {
            uint256 rateDiff_usd_eur = (exchangeRates[usd24Address][eur24Address] > _usd_eur)
                ? (exchangeRates[usd24Address][eur24Address] - _usd_eur)
                : (_usd_eur - exchangeRates[usd24Address][eur24Address]);
            rateDiff_usd_eur = (rateDiff_usd_eur * 10000) / exchangeRates[usd24Address][eur24Address];
            uint256 rateDiff_usd_chf = (exchangeRates[usd24Address][chf24Address] > _usd_chf)
                ? (exchangeRates[usd24Address][chf24Address] - _usd_chf)
                : (_usd_chf - exchangeRates[usd24Address][chf24Address]);
            rateDiff_usd_chf = (rateDiff_usd_chf * 10000) / exchangeRates[usd24Address][chf24Address];
            uint256 rateDiff_usd_gbp = (exchangeRates[usd24Address][gbp24Address] > _usd_gbp)
                ? (exchangeRates[usd24Address][gbp24Address] - _usd_gbp)
                : (_usd_gbp - exchangeRates[usd24Address][gbp24Address]);
            rateDiff_usd_gbp = (rateDiff_usd_gbp * 10000) / exchangeRates[usd24Address][gbp24Address];
            uint256 rateDiff_usd_cnh = (exchangeRates[usd24Address][cnh24Address] > _usd_cnh)
                ? (exchangeRates[usd24Address][cnh24Address] - _usd_cnh)
                : (_usd_cnh - exchangeRates[usd24Address][cnh24Address]);
            rateDiff_usd_cnh = (rateDiff_usd_cnh * 10000) / exchangeRates[usd24Address][cnh24Address];
            if (rateDiff_usd_eur < 300) exchangeRates[usd24Address][eur24Address] = _usd_eur;
            if (rateDiff_usd_chf < 300) exchangeRates[usd24Address][chf24Address] = _usd_chf;
            if (rateDiff_usd_gbp < 300) exchangeRates[usd24Address][gbp24Address] = _usd_gbp;
            if (rateDiff_usd_cnh < 300) exchangeRates[usd24Address][cnh24Address] = _usd_cnh;
            marketClosed = _isMarketClosed;
            emit ExchangeRatesUpdatedByRobot(
                _msgSender(),
                exchangeRates[usd24Address][eur24Address],
                exchangeRates[usd24Address][chf24Address],
                exchangeRates[usd24Address][gbp24Address],
                exchangeRates[usd24Address][cnh24Address],
                marketClosed
            );
        } else {
            revert Fiat24CardAuthorizationMarqeta__NotRateUpdater((_msgSender()));
        }
    }

    function setMarketClosed(bool newMarketClosed) public {
        if (!(hasRole(OPERATOR_ADMIN_ROLE, _msgSender()))) revert Fiat24CardAuthorizationMarqeta__NotOperator(_msgSender());
        marketClosed = newMarketClosed;
    }

    function setExchangeSpread(uint256 newExchangeSpread) public {
        if (!(hasRole(OPERATOR_ADMIN_ROLE, _msgSender()))) revert Fiat24CardAuthorizationMarqeta__NotOperator(_msgSender());

        require(newExchangeSpread > 9000 && newExchangeSpread <= 11000, "Spread must be between 9000 and 11000");
        exchangeSpread = newExchangeSpread;
    }

    function setInterchange(uint256 interchange_) public {
        if (!(hasRole(OPERATOR_ADMIN_ROLE, _msgSender()))) revert Fiat24CardAuthorizationMarqeta__NotOperator(_msgSender());
        if (interchange_ > 100) revert Fiat24CardAuthorizationMarqeta__InterchangeOutOfRange(interchange_);
        interchange = interchange_;
    }

    /// @notice Add a token and set the USD→fiat exchange rate.
    /// @param _fiatToken The address of the Token to be added.
    /// @param _rateUsdToFiat Initial exchange rate
    /// @param _fiatName fiat token name
    function addFiatToken(address _fiatToken, uint256 _rateUsdToFiat, string calldata _fiatName) external {

        if (!hasRole(OPERATOR_ADMIN_ROLE, _msgSender())) revert Fiat24CardAuthorizationMarqeta__NotOperator(_msgSender());

        require(_fiatToken != address(0), "Zero address");
        require(!validXXX24Tokens[_fiatToken], "Already exists token");
        require(_rateUsdToFiat > 0, "Rate must be > 0");
        require(XXX24Tokens[_fiatName] == address(0), "Fiat name already used");

        validXXX24Tokens[_fiatToken] = true;
        XXX24Tokens[_fiatName] = _fiatToken;
        exchangeRates[usd24Address][_fiatToken] = _rateUsdToFiat;

        emit FiatTokenAndRateAddedInMarqeta(_fiatToken, _rateUsdToFiat, _fiatName);
    }

    function updateExchangeRates(
        address[] calldata fiatTokens,
        uint256[] calldata rates,
        bool isMarketClosed
    ) external {

        require(
            hasRole(RATES_UPDATER_OPERATOR_ROLE, _msgSender()) ||
            hasRole(RATES_UPDATER_ROBOT_ROLE,    _msgSender()),
            "Not authorized to update rates"
        );

        require(fiatTokens.length == rates.length, "Arrays length mismatch");
        marketClosed = isMarketClosed;
        for (uint256 i = 0; i < fiatTokens.length; i++) {
            address token = fiatTokens[i];
            uint256 rate  = rates[i];
            require(validXXX24Tokens[token], "Invalid token");
            require(rate > 0, "Rate must be >0");
            _updateExchangeRate(token, rate, isMarketClosed);
        }
    }

    /// @notice Updating the exchange rate between USD and individual fiat currencies
    function _updateExchangeRate(address _fiatToken, uint256 _rateUsdcToFiat, bool _isMarketClosed) internal {

        uint256 oldRate = exchangeRates[usd24Address][_fiatToken];

        if (hasRole(RATES_UPDATER_OPERATOR_ROLE, _msgSender())) {
            exchangeRates[usd24Address][_fiatToken] = _rateUsdcToFiat;
            emit ExchangeRateUpdatedByOperator(_fiatToken, oldRate, _rateUsdcToFiat, _isMarketClosed);
        } else if (hasRole(RATES_UPDATER_ROBOT_ROLE, _msgSender())) {

            uint256 rateDiff = oldRate > _rateUsdcToFiat ? (oldRate - _rateUsdcToFiat) : (_rateUsdcToFiat - oldRate);
            rateDiff = rateDiff * 10000 / oldRate;
            require(rateDiff < 300, "Rate Update Robot: change too large");
            exchangeRates[usd24Address][_fiatToken] = _rateUsdcToFiat;
            emit ExchangeRateUpdatedByRobot(_fiatToken, oldRate, _rateUsdcToFiat, _isMarketClosed);
        } else {
            revert Fiat24CardAuthorizationMarqeta__NotRateUpdater((_msgSender()));
        }
    }

    function pause() external {
        if (!(hasRole(PAUSE_ROLE, _msgSender()))) revert Fiat24CardAuthorizationMarqeta__NotPauser(_msgSender());
        _pause();
    }

    function unpause() external {
        if (!(hasRole(UNPAUSE_ROLE, _msgSender()))) revert Fiat24CardAuthorizationMarqeta__NotPauser(_msgSender());
        _unpause();
    }
}
