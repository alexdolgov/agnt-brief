// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.7.0 <0.9.0;
import "./IStargateRouter.sol";

interface ISGReceiver {
    /// @param _chainId The remote chainId sending the tokens
    /// @param _srcAddress The remote Bridge address
    /// @param _nonce The message ordering nonce
    /// @param _token The token contract on the local chain
    /// @param amountLD The qty of local _token contract tokens  
    /// @param payload The bytes containing the _tokenOut, _deadline, _amountOutMin, _toAddr
    function sgReceive(
        uint16 _chainId, 
        bytes memory _srcAddress, 
        uint _nonce, 
        address _token, 
        uint amountLD, 
        bytes memory payload
    ) external;
}

interface IERC20 {
    // transfer and tranferFrom have been removed, because they don't work on all tokens (some aren't ERC20 complaint).
    // By removing them you can't accidentally use them.
    // name, symbol and decimals have been removed, because they are optional and sometimes wrongly implemented (MKR).
    // Use BoringERC20 with `using BoringERC20 for IERC20` and call `safeTransfer`, `safeTransferFrom`, etc instead.
    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function allowance(address owner, address spender) external view returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function transferFrom(address _from, address _to, uint256 _value) external returns (bool success);
}

interface IOneBalance {
    function depositToken(
        address _sponsor,
        IERC20 _token,
        uint256 _amount
    ) external;
}

contract TopUpGelato is ISGReceiver {

    IOneBalance public constant gelato = IOneBalance(0x7506C12a824d73D9b08564d5Afc22c949434755e);
    IERC20 public constant USDC = IERC20(0x2791Bca1f2de4661ED88A30C99A7a9449Aa84174);

    constructor () {
        USDC.approve(address(gelato), type(uint).max);
    }
    /// @param _chainId The remote chainId sending the tokens
    /// @param _srcAddress The remote Bridge address
    /// @param _nonce The message ordering nonce
    /// @param _token The token contract on the local chain
    /// @param amountLD The qty of local _token contract tokens  
    /// @param payload The bytes containing the _tokenOut, _deadline, _amountOutMin, _toAddr
    function sgReceive(
        uint16 _chainId, 
        bytes memory _srcAddress, 
        uint _nonce, 
        address _token, 
        uint amountLD, 
        bytes memory payload
    ) external override {
        (address _toAddr) = abi.decode(payload, (address));

        gelato.depositToken(_toAddr, USDC, amountLD);
    }
}


contract TopUpGelatoSender {

    IStargateRouter public constant stargateRouter = IStargateRouter(0x8731d54E9D02c286767d56ac03e8037C07e01e98);
    IERC20 public constant USDC = IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);
    address public immutable topUpContract;

    constructor (address topUp_) {
        USDC.approve(address(stargateRouter), type(uint).max);
        topUpContract = topUp_;
    }
    
    function topUp(uint256 amount, uint256 minReceived, address to) external payable {
        USDC.transferFrom(msg.sender, address(this), amount);

        IStargateRouter(stargateRouter).swap{value: msg.value}(
            109,                               // the destination chain id
            1,                                // the source Stargate poolId
            1,                                // the destination Stargate poolId
            payable(msg.sender),                      // refund adddress. if msg.sender pays too much gas, return extra eth
            amount,                             // total tokens to send to destination chain
            minReceived,                           // minimum
            IStargateRouter.lzTxObj(500000, 0, "0x"), // 500,000 for the sgReceive()
            abi.encodePacked(topUpContract),   // destination address, the sgReceive() implementer
            abi.encode(to)                                      // bytes payload
        );
    }
}