// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface ISbToken {
    function totalReserves() external view returns (uint256);
    function _reduceReserves(uint256 reduceAmount) external returns (uint256);
    function _setReserveGuardian(address payable newReserveGuardian) external returns (uint256);
    function underlying() external view returns (address);
}

abstract contract ReserveGuardian {
    uint256 public constant DENOMINATOR = 10000;

    ISbToken[] public sbTokens;

    mapping(address => uint256) public sbTokenIndex;
    mapping(address => bool) public isNativeToken;

    address public admin;
    uint256 public adminFee;

    address public sbl;
    address public govSBL;

    function _initialize(address _admin, uint256 _adminFee, address _sbl, address _govSBL) internal {
        require(admin == address(0), "ReserveGuardian: already initialized");
        admin = _admin;
        adminFee = _adminFee;
        govSBL = _govSBL;
    }

    function addSbToken(ISbToken _sbToken, bool isNative) external {
        require(msg.sender == admin, "ReserveGuardian: forbidden");
        sbTokens.push(_sbToken);
        sbTokenIndex[address(_sbToken)] = sbTokens.length - 1;
        isNativeToken[address(_sbToken)] = isNative;
    }

    function setAdmin(address _admin) public {
        require(msg.sender == admin, "ReserveGuardian: forbidden");
        admin = _admin;
    }

    function buyback(ISbToken _sbToken) public {
        require(msg.sender == admin, "ReserveGuardian: forbidden");
        _claimReserves(_sbToken);

        uint256 balanceInThis;
        bool isNative = isNativeToken[address(_sbToken)];
        if (isNative) {
            balanceInThis = address(this).balance;
        } else {
            balanceInThis = IERC20(_sbToken.underlying()).balanceOf(address(this));
        }

        uint256 _adminFee = (balanceInThis * adminFee) / DENOMINATOR;

        balanceInThis -= _adminFee;
        if (isNative) {
            _transferOut(address(0), admin, _adminFee);
            _swapToSBL(address(0), balanceInThis);
        } else {
            _transferOut(_sbToken.underlying(), admin, _adminFee);
            _swapToSBL(_sbToken.underlying(), balanceInThis);
        }
    }

    function _claimReserves(ISbToken _sbToken) internal {
        uint256 _index = sbTokenIndex[address(_sbToken)];
        uint256 reserves = sbTokens[_index].totalReserves();
        sbTokens[_index]._reduceReserves(reserves);
    }

    function _swapToSBL(address _token, uint256 _amount) internal virtual {}

    function _transferOut(address _token, address _to, uint256 _amount) internal {
        if (_token == address(0)) {
            (bool success,) = _to.call{value: _amount}("");
            require(success, "ReserveGuardian: transfer failed");
        } else {
            IERC20(_token).transfer(_to, _amount);
        }
    }
}
