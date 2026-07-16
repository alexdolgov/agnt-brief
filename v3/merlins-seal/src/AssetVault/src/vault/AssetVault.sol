// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

import {OracleConfigurator} from "../oracle/OracleConfigurator.sol";
import {Token} from "../token/Token.sol";
import "../utils/Errors.sol";

contract AssetVault is AccessControl, ReentrancyGuard {
    bytes32 public constant SUPPORTED_TOKEN_OPERATION_ROLE =
        keccak256("SUPPORTED_TOKEN_OPERATION_ROLE");
    bytes32 public constant PAUSE_OPERATION_ROLE =
        keccak256("PAUSE_OPERATION_ROLE");
    bytes32 public constant WHITELIST_OPERATION_ROLE =
        keccak256("WHITELIST_OPERATION_ROLE");
    bytes32 public constant WITHDRAWAL_PROCESS_ROLE =
        keccak256("WITHDRAWAL_PROCESS_ROLE");
    bytes32 public constant ASSETS_MANAGEMENT_ROLE =
        keccak256("ASSETS_MANAGEMENT_ROLE");
    bytes32 public constant FEE_SETTER_ROLE = keccak256("FEE_SETTER_ROLE");
    bytes32 public constant MARKET_MAKER_ROLE = keccak256("MARKET_MAKER_ROLE");

    uint256 public constant D2 = 1e2;
    uint256 public constant D4 = 1e4;
    uint256 public constant D18 = 1e18;

    Token public immutable lpToken;
    OracleConfigurator public immutable oracleConfigurator;

    address[] public underlyingTokens;

    WithdrawalRequest[] public withdrawalRequests;

    mapping(address => bool) public isUnderlyingToken;
    mapping(address => uint8) public tokenDecimals;

    uint256 public depositFeeRate;
    uint256 public withdrawFeeRate;

    mapping(uint256 => uint256) public idToWithdrawalRequest;

    uint256 public withdrawalCounter;

    address public feeRecipient;

    mapping(address => bool) public depositPaused;
    mapping(address => bool) public withdrawPaused;

    mapping(address => bool) public whitelistMode;
    mapping(address => mapping(address => bool)) public depositWhitelist;

    struct WithdrawalRequest {
        address requester;
        address receiver;
        address requestToken;
        uint256 id;
        uint256 lpAmount;
        uint256 minReceiveAmount;
        uint256 timestamp;
    }
    event Deposit(
        address indexed account,
        address indexed token,
        uint256 tokenAmount,
        uint256 lpAmount
    );
    event Deposit(
        address indexed account,
        address[] tokens,
        uint256[] tokenAmounts,
        uint256 lpAmount
    );
    event WithdrawalRequested(
        address indexed requester,
        address indexed receiver,
        address indexed requestToken,
        uint256 id,
        uint256 lpAmount,
        uint256 minReceiveAmount
    );
    event WithdrawalCancelled(
        address indexed requester,
        address indexed requestToken,
        uint256 id,
        uint256 lpAmount
    );
    event WithdrawalProcessed(
        address indexed requester,
        address indexed receiver,
        address indexed requestToken,
        uint256 lpAmount,
        uint256 finalizedAmount
    );
    event WithdrawFromVault(
        address indexed curator,
        address indexed token,
        uint256 amount
    );
    event RepayToVault(
        address indexed curator,
        address indexed token,
        uint256 amount
    );
    event TokenAdded(address token);
    event TokenRemoved(address token);
    event SetDepositPause(address token, bool paused);
    event SetWithdrawPause(address token, bool paused);
    event SetWhitelistMode(address token, bool whitelistMode);
    event SetWhitelist(address token, address user, bool allowed);
    event SetWithdrawFeeRate(uint256 rate);
    event SetDepositFeeRate(uint256 rate);
    event SetFeeRecipient(address recipient);
    event FeeCharged(address recipient, uint256 amount);

    constructor(address _lpToken, address _oracleConfigurator) {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        lpToken = Token(_lpToken);
        oracleConfigurator = OracleConfigurator(_oracleConfigurator);

        if (oracleConfigurator.oracles(address(lpToken)) == address(0))
            revert InvalidOracle();
    }

    function deposit(
        address _token,
        uint256 _amount,
        uint256 _minLpAmount
    ) external returns (uint256 mintAmount) {
        if (!isUnderlyingToken[_token]) revert InvalidToken();
        if (depositPaused[_token]) revert Paused();
        if (_amount == 0) revert ZeroAmount();
        if (whitelistMode[_token] && !depositWhitelist[_token][msg.sender])
            revert NotWhitelisted();

        TransferHelper.safeTransferFrom(
            _token,
            msg.sender,
            address(this),
            _amount
        );

        uint256 lpPrice = oracleConfigurator.getPrice(address(lpToken));
        uint256 underlyingPrice = oracleConfigurator.getPrice(_token);

        mintAmount =
            (_amount * 10 ** (18 - tokenDecimals[_token]) * underlyingPrice) /
            lpPrice;

        uint256 feeRate = depositFeeRate;
        address recipient = feeRecipient;
        if (feeRate > 0) {
            uint256 fee = (mintAmount * feeRate) / D4;
            lpToken.mint(recipient, fee);

            emit FeeCharged(recipient, fee);
            mintAmount = mintAmount - fee;
        }

        if (mintAmount < _minLpAmount) revert InsufficientOutputAmount();

        lpToken.mint(msg.sender, mintAmount);

        emit Deposit(msg.sender, _token, _amount, mintAmount);
    }

    function depositMultiple(
        address[] memory _tokens,
        uint256[] memory _amounts,
        uint256 _minLpAmount
    ) external returns (uint256 totalMintAmount) {
        uint256 length = _tokens.length;
        if (length == 0 || _amounts.length != length)
            revert InvalidArrayLength();

        uint256 lpPrice = oracleConfigurator.getPrice(address(lpToken));

        uint256 i;
        for (i; i < length; i++) {
            address token = _tokens[i];
            if (!isUnderlyingToken[token]) revert InvalidToken();
            if (depositPaused[token]) revert Paused();
            if (whitelistMode[token] && !depositWhitelist[token][msg.sender])
                revert NotWhitelisted();

            uint256 amount = _amounts[i];
            if (amount == 0) revert ZeroAmount();

            TransferHelper.safeTransferFrom(
                token,
                msg.sender,
                address(this),
                amount
            );

            uint256 underlyingPrice = oracleConfigurator.getPrice(token);

            uint256 mintAmount = (amount *
                10 ** (18 - tokenDecimals[token]) *
                underlyingPrice) / lpPrice;
            totalMintAmount += mintAmount;
        }

        uint256 feeRate = depositFeeRate;
        address recipient = feeRecipient;
        if (feeRate > 0) {
            uint256 fee = (totalMintAmount * feeRate) / D4;
            lpToken.mint(recipient, fee);

            emit FeeCharged(recipient, fee);
            totalMintAmount = totalMintAmount - fee;
        }

        if (totalMintAmount < _minLpAmount) revert InsufficientOutputAmount();

        lpToken.mint(msg.sender, totalMintAmount);

        emit Deposit(msg.sender, _tokens, _amounts, totalMintAmount);
    }

    function requestWithdraw(
        address _requestToken,
        address _receiver,
        uint256 _lpAmount,
        uint256 _minReceiveAmount
    ) external onlyRole(MARKET_MAKER_ROLE) returns (uint256 id) {
        if (_receiver == address(0)) revert ZeroAddress();
        if (_lpAmount == 0) revert ZeroAmount();
        if (!isUnderlyingToken[_requestToken]) revert InvalidToken();
        if (withdrawPaused[_requestToken]) revert Paused();

        TransferHelper.safeTransferFrom(
            address(lpToken),
            msg.sender,
            address(this),
            _lpAmount
        );

        withdrawalRequests.push(
            WithdrawalRequest({
                requester: msg.sender,
                receiver: _receiver,
                requestToken: _requestToken,
                id: withdrawalCounter,
                lpAmount: _lpAmount,
                minReceiveAmount: _minReceiveAmount,
                timestamp: block.timestamp
            })
        );
        id = withdrawalCounter;
        withdrawalCounter = withdrawalCounter + 1;
        idToWithdrawalRequest[id] = withdrawalRequests.length - 1;

        emit WithdrawalRequested(
            msg.sender,
            _receiver,
            _requestToken,
            id,
            _lpAmount,
            _minReceiveAmount
        );
    }

    function cancelWithdrawal(uint256 _id) external {
        uint256 index = idToWithdrawalRequest[_id];
        uint256 length = withdrawalRequests.length;
        if (index >= length || _id >= withdrawalCounter)
            revert ArrayIndexOutOfBounds();

        WithdrawalRequest memory withdrawalRequest = withdrawalRequests[index];
        address requester = withdrawalRequest.requester;
        if (msg.sender != requester) revert WrongRequester();

        idToWithdrawalRequest[_id] = type(uint256).max;
        idToWithdrawalRequest[withdrawalRequests[length - 1].id] = index;
        withdrawalRequests[index] = withdrawalRequests[length - 1];
        withdrawalRequests.pop();

        uint256 lpAmount = withdrawalRequest.lpAmount;

        TransferHelper.safeTransfer(address(lpToken), requester, lpAmount);

        emit WithdrawalCancelled(
            requester,
            withdrawalRequest.requestToken,
            _id,
            lpAmount
        );
    }

    function processWithdrawal(
        uint256 _id
    )
        external
        nonReentrant
        onlyRole(WITHDRAWAL_PROCESS_ROLE)
        returns (
            address requestToken,
            uint256 finalizedAmount,
            uint256 lpAmount
        )
    {
        uint256 index = idToWithdrawalRequest[_id];
        uint256 length = withdrawalRequests.length;
        if (index >= length || _id >= withdrawalCounter)
            revert ArrayIndexOutOfBounds();

        WithdrawalRequest memory withdrawalRequest = withdrawalRequests[index];
        if (_id != withdrawalRequest.id) revert InvalidReceipt();

        uint256 lpPrice = oracleConfigurator.getPrice(address(lpToken));

        (requestToken, finalizedAmount, lpAmount) = _finalizeWithdraw(
            withdrawalRequest,
            lpPrice,
            withdrawFeeRate,
            feeRecipient
        );

        idToWithdrawalRequest[withdrawalRequests[length - 1].id] = index;
        idToWithdrawalRequest[_id] = type(uint256).max;

        withdrawalRequests[index] = withdrawalRequests[length - 1];
        withdrawalRequests.pop();
    }

    function processAllWithdrawal()
        external
        nonReentrant
        onlyRole(WITHDRAWAL_PROCESS_ROLE)
    {
        uint256 length = withdrawalRequests.length;
        if (length == 0) revert InvalidArrayLength();

        uint256 lpPrice = oracleConfigurator.getPrice(address(lpToken));

        uint256 i;
        for (i; i < length; i++) {
            WithdrawalRequest memory withdrawalRequest = withdrawalRequests[i];

            _finalizeWithdraw(
                withdrawalRequest,
                lpPrice,
                withdrawFeeRate,
                feeRecipient
            );

            idToWithdrawalRequest[withdrawalRequest.id] = type(uint256).max;
        }

        delete withdrawalRequests;
    }

    function _finalizeWithdraw(
        WithdrawalRequest memory _withdrawalRequest,
        uint256 _lpPrice,
        uint256 _withdrawFeeRate,
        address _feeRecipient
    )
        internal
        returns (
            address requestToken,
            uint256 finalizedAmount,
            uint256 lpAmount
        )
    {
        uint256 minReceiveAmount = _withdrawalRequest.minReceiveAmount;
        requestToken = _withdrawalRequest.requestToken;

        lpAmount = _withdrawalRequest.lpAmount;

        uint256 fee;
        if (_withdrawFeeRate > 0) {
            fee = (lpAmount * _withdrawFeeRate) / D4;
            lpAmount = lpAmount - fee;
        }

        uint256 underlyingPrice = oracleConfigurator.getPrice(requestToken);

        finalizedAmount =
            (lpAmount * _lpPrice) /
            underlyingPrice /
            (10 ** (18 - tokenDecimals[requestToken]));

        address requester = _withdrawalRequest.requester;
        if (finalizedAmount >= minReceiveAmount) {
            address receiver = _withdrawalRequest.receiver;

            if (fee > 0) {
                TransferHelper.safeTransfer(
                    address(lpToken),
                    _feeRecipient,
                    fee
                );

                emit FeeCharged(_feeRecipient, fee);
            }

            lpToken.burn(address(this), lpAmount);

            TransferHelper.safeTransfer(
                address(requestToken),
                receiver,
                finalizedAmount
            );
            emit WithdrawalProcessed(
                requester,
                receiver,
                requestToken,
                lpAmount,
                finalizedAmount
            );
        } else {
            finalizedAmount = 0;

            TransferHelper.safeTransfer(
                address(lpToken),
                requester,
                _withdrawalRequest.lpAmount
            );
            emit WithdrawalCancelled(
                requester,
                requestToken,
                _withdrawalRequest.id,
                lpAmount
            );
        }
    }

    function withdrawFromVault(
        address[] memory _tokens,
        uint256[] memory _amounts
    ) external onlyRole(ASSETS_MANAGEMENT_ROLE) {
        uint256 length = _tokens.length;
        if (length == 0 || length != _amounts.length)
            revert InvalidArrayLength();

        uint256 i;
        for (i; i < length; i++) {
            address token = _tokens[i];
            uint256 amount = _amounts[i];
            TransferHelper.safeTransfer(token, msg.sender, amount);

            emit WithdrawFromVault(msg.sender, token, amount);
        }
    }

    function repayToVault(
        address[] memory _tokens,
        uint256[] memory _amounts
    ) external onlyRole(ASSETS_MANAGEMENT_ROLE) {
        uint256 length = _tokens.length;
        if (length == 0 || length != _amounts.length)
            revert InvalidArrayLength();

        uint256 i;
        for (i; i < length; i++) {
            address token = _tokens[i];
            uint256 amount = _amounts[i];
            TransferHelper.safeTransferFrom(
                token,
                msg.sender,
                address(this),
                amount
            );

            emit RepayToVault(msg.sender, token, amount);
        }
    }

    function addUnderlyingToken(
        address _token
    ) external onlyRole(SUPPORTED_TOKEN_OPERATION_ROLE) {
        if (_token == address(0) || _token == address(lpToken))
            revert InvalidToken();
        if (isUnderlyingToken[_token]) revert TokenAlreadyAdd();
        if (oracleConfigurator.oracles(_token) == address(0))
            revert InvalidOracle();

        uint8 decimals = ERC20(_token).decimals();
        if (decimals > 18) revert InvalidDecimals();

        isUnderlyingToken[_token] = true;
        tokenDecimals[_token] = decimals;
        underlyingTokens.push(_token);

        emit TokenAdded(_token);
    }

    function removeUnderlyingToken(
        address _token
    ) external onlyRole(SUPPORTED_TOKEN_OPERATION_ROLE) {
        if (!isUnderlyingToken[_token]) revert InvalidToken();
        if (ERC20(_token).balanceOf(address(this)) != 0)
            revert NonEmptySupportedToken();

        address[] memory tokens = underlyingTokens;

        uint256 length = tokens.length;
        uint256 i;
        for (i; i < length; i++) {
            if (tokens[i] == _token) {
                underlyingTokens[i] = underlyingTokens[length - 1];
                underlyingTokens.pop();
                break;
            }
        }
        isUnderlyingToken[_token] = false;
        delete tokenDecimals[_token];

        emit TokenRemoved(_token);
    }

    function setDepositPause(
        address _token,
        bool _pause
    ) external onlyRole(PAUSE_OPERATION_ROLE) {
        depositPaused[_token] = _pause;
        emit SetDepositPause(_token, _pause);
    }

    function setWithdrawPause(
        address _token,
        bool _pause
    ) external onlyRole(PAUSE_OPERATION_ROLE) {
        withdrawPaused[_token] = _pause;
        emit SetWithdrawPause(_token, _pause);
    }

    function setWhitelistMode(
        address _token,
        bool _applyWhitelist
    ) external onlyRole(WHITELIST_OPERATION_ROLE) {
        whitelistMode[_token] = _applyWhitelist;
        emit SetWhitelistMode(_token, _applyWhitelist);
    }

    function setWhitelistAddress(
        address _token,
        address _minter,
        bool _allowed
    ) external onlyRole(WHITELIST_OPERATION_ROLE) {
        depositWhitelist[_token][_minter] = _allowed;
        emit SetWhitelist(_token, _minter, _allowed);
    }

    function setWithdrawFeeRate(
        uint256 _rate
    ) external onlyRole(FEE_SETTER_ROLE) {
        if (_rate > 0 && feeRecipient == address(0)) revert NoFeeRecipient();
        if (_rate > D2) revert InvalidFeeRate();
        withdrawFeeRate = _rate;
        emit SetWithdrawFeeRate(_rate);
    }

    function setDepositFeeRate(
        uint256 _rate
    ) external onlyRole(FEE_SETTER_ROLE) {
        if (_rate > 0 && feeRecipient == address(0)) revert NoFeeRecipient();
        if (_rate > D2) revert InvalidFeeRate();
        depositFeeRate = _rate;
        emit SetDepositFeeRate(_rate);
    }

    function setFeeRecipient(
        address _address
    ) external onlyRole(FEE_SETTER_ROLE) {
        if (_address == address(0)) {
            depositFeeRate = 0;
            withdrawFeeRate = 0;

            emit SetDepositFeeRate(0);
            emit SetWithdrawFeeRate(0);
        }
        feeRecipient = _address;
        emit SetFeeRecipient(_address);
    }

    function getUnderlyings()
        external
        view
        returns (address[] memory underlyings)
    {
        return underlyingTokens;
    }

    function getRequestsLength() external view returns (uint256 length) {
        length = withdrawalRequests.length;
    }

    function getRequestWithdrawals()
        external
        view
        returns (WithdrawalRequest[] memory allWithdrawalRequests)
    {
        return withdrawalRequests;
    }
}
