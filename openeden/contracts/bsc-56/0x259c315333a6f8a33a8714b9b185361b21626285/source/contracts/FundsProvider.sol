// SPDX-License-Identifier: MIT
pragma solidity =0.8.10;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./lib/TransferHelper.sol";
import "./FundsBasic.sol";

// import "hardhat/console.sol";

contract FundsProvider is Ownable, FundsBasic {
    using TransferHelper for address;

    event UpdateSupportToken(address token, bool status);
    event SetAuthCenter(address preAuthCenter, address authCenter);

    address public authCenter;
    mapping(address => bool) supportTokens;

    constructor(address _authCenter) {
        authCenter = _authCenter;
    }

    function push(address _token, uint256 _amt)
        external
        payable
        override
        onlyOwner
        returns (uint256 amt)
    {
        amt = _push(_token, _amt);
    }

    function pull(
        address _token,
        uint256 _amt,
        address _to
    ) external override onlyOwner returns (uint256 amt) {
        require(
            msg.sender != tx.origin,
            "BYDEFI: should be called by operator!"
        );

        amt = _pull(_token, _amt, _to);
    }

    function rebalancePull(
        address _token,
        uint256 _amt,
        address _to
    ) external onlyOwner returns (uint256 amt) {
        amt = _pull(_token, _amt, _to);
    }

    function updateSupportToken(address _token, bool _status)
        external
        onlyOwner
    {
        require(_token != NATIVE_TOKEN, "BYDEFI: Invalid Token Address!");
        supportTokens[_token] = _status;
        emit UpdateSupportToken(_token, _status);
    }

    function isSupported(address _token) external view returns (bool) {
        return supportTokens[_token];
    }

    function setAuthCenter(address _authCenter) external onlyOwner {
        address pre = authCenter;
        authCenter = _authCenter;
        emit SetAuthCenter(pre, _authCenter);
    }
}
