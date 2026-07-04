// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

interface IMesonMinimal {
    function tokenForIndex(uint8 tokenIndex) external view returns (address);
    function _isCoreToken(uint8 tokenIndex) external view returns (bool);
    function _amountFactor(uint8 tokenIndex) external view returns (uint256);
    function simpleExecuteSwap(uint256 encodedSwap) payable external;
}

contract TransferToMesonFactory {
    function deploy(address mesonAddress, address admin, uint16 destChain, bytes32 destAddr, address via) external returns (address deployedAddress) {
        bytes memory bytecode = abi.encodePacked(
            type(TransferToMesonContract).creationCode,
            abi.encode(mesonAddress, admin, destChain, destAddr, via)
        );

        assembly {
            deployedAddress := create2(0, add(bytecode, 32), mload(bytecode), "")
            if iszero(deployedAddress) {
                revert(0, 0)
            }
        }
    }
}

contract TransferToMesonContract {
    bytes4 private constant ERC20_APPROVE_SELECTOR = bytes4(keccak256("approve(address,uint256)"));

    IMesonMinimal public immutable meson;
    uint16 public immutable destChain;
    bytes32 public immutable destAddr; // Could be used for non-EVMs
    address public immutable via;

    error EInvalidEncoded();
    error EIncorrectDestChain();
    error ENeedToContract();
    error EApprove();

    constructor(address mesonAddress, uint16 _destChain, bytes32 _destAddr, address _via) {
        meson = IMesonMinimal(mesonAddress);
        destChain = _destChain;
        destAddr = _destAddr;
        via = _via;
    }

    function transferToMeson(uint256 encodedSwap) external {
        require((encodedSwap & 0x3000000000000000000000000000000000000000000000000000) == 0x3000000000000000000000000000000000000000000000000000, EInvalidEncoded());
        require(destChain == uint16(encodedSwap >> 32), EIncorrectDestChain());
        if (via != address(0)) {
            require((encodedSwap & 0x8000000000000000000000000000000000000000000000000000) == 0, ENeedToContract());
        }

        uint8 tokenIndex = uint8(encodedSwap);
        uint256 amount = (encodedSwap >> 208) & 0xFFFFFFFFFF;

        if (meson._isCoreToken(tokenIndex)) {
            meson.simpleExecuteSwap{value: amount * 10 ** 12}(encodedSwap);
        } else {
            address tokenAddr = meson.tokenForIndex(tokenIndex);
            (bool success, bytes memory data) = tokenAddr.call(
                abi.encodeWithSelector(ERC20_APPROVE_SELECTOR, address(meson), amount * meson._amountFactor(tokenIndex))
            );
            require(success && (data.length == 0 || abi.decode(data, (bool))), EApprove());

            meson.simpleExecuteSwap(encodedSwap);
        }
    }
}
