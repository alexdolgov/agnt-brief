//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

interface IERC20 {
    function transferFrom(address from, address to, uint256 amount) external;
    function transfer(address to, uint256 amount) external;
    function decimals() external returns (uint256);
    function balanceOf(address user) external returns (uint256);
}


interface AggregatorV3Interface {
    function decimals() external view returns (uint8);
    function latestAnswer() external view returns (uint256);
}


contract SwapDeposit {
    address public owner;
    address public fundsReceiver;

    AggregatorV3Interface public oracle;

    struct SupportedToken {
        IERC20 token;
        AggregatorV3Interface oracle;
        bool supported;
        uint256 oracleDecimals;
    }

    mapping(address => SupportedToken) public supportedTokens;

    event Deposit(
        address indexed sender, 
        uint256 amount, 
        uint256 oraclePrice,
        address indexed token,
        string indexed receiver
    );

    event ModifySupportedToken(
        address indexed token,
        address oracle,
        bool isNowSuppored
    );

    constructor(address newOwner, address newFundsReceiver){
        owner = newOwner;
        fundsReceiver = newFundsReceiver;
    }

    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address _new, address _fundsReceiver) external onlyOwner {
        owner = _new;
        fundsReceiver = _fundsReceiver;
    }

    function modifySupportedToken(address _token, address _oracle, bool _isSupported) external onlyOwner {
        uint256 oracleDecimals = AggregatorV3Interface(_oracle).decimals();

        supportedTokens[_token] = SupportedToken({
            token: IERC20(_token),
            oracle: AggregatorV3Interface(_oracle),
            supported: _isSupported,
            oracleDecimals: oracleDecimals
        });

        emit ModifySupportedToken(_token, _oracle, _isSupported);
    }

    function deposit(address token, uint256 amount, string memory receiver) external {
        require(supportedTokens[token].supported, "token not supported");

        IERC20(token).transferFrom(msg.sender, fundsReceiver, amount);

        uint256 oraclePrice = supportedTokens[token].oracle.latestAnswer();

        emit Deposit(msg.sender, amount, oraclePrice, token, receiver);
    }

    function call(address target, uint256 value, string memory signature, bytes memory data) external onlyOwner {
        bytes memory callData;
        if (bytes(signature).length == 0) {
            callData = data;
        } else {
            callData = abi.encodePacked(bytes4(keccak256(bytes(signature))), data);
        }

        (bool success, ) = target.call{value: value}(callData);
        require(success, "Transaction execution reverted.");
    }
}