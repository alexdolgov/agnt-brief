// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@solvprotocol/contracts-v3-solidity-utils/contracts/misc/Dates.sol";
import "@solvprotocol/contracts-v3-solidity-utils/contracts/access/OwnControl.sol";
import "@solvprotocol/contracts-v3-solidity-utils/contracts/misc/StringConvertor.sol";
import "@solvprotocol/erc-3525/periphery/ERC3525MetadataDescriptor.sol";
import "./TimelockedERC20ContainerDelegate.sol";
import "./TimelockedERC20ContainerConcrete.sol";
import "./svgs/TimelockedERC20ContainerDefaultSVG.sol";

contract TimelockedERC20ContainerMetadataDescriptor is ERC3525MetadataDescriptor, Initializable, OwnControl {

    using Strings for address;
    using Strings for uint256;
    using StringConvertor for uint256;
    using Dates for uint256;

    event SetSVG(address indexed sft, address oldSVG, address newSVG);
    event SetBackgroundImage(address indexed sft, string oldBgImage, string newBgImage);
    event SetBaseURI(string oldBaseURI, string newBaseURI);

    mapping(address => address) internal _payableSVGs;

    mapping(address => string) _backgroundImages;

    string public baseURI;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() { 
        _disableInitializers();
    }

    function initialize(address owner_, address defaultSVG_, string calldata baseURI_) external initializer {
        OwnControl.__OwnControl_init(owner_);
        _setTimelockedERC20ContainerSVG(address(0), defaultSVG_);
        _setBaseURI(baseURI_);
    }

    function setPayableSVG(address payableAddress_, address payableSVG_) public onlyOwner {
        _setTimelockedERC20ContainerSVG(payableAddress_, payableSVG_);
    }

    function _setTimelockedERC20ContainerSVG(address payableAddress_, address payableSVG_) internal {
        emit SetSVG(payableAddress_, _payableSVGs[payableAddress_], payableSVG_);
        _payableSVGs[payableAddress_] = payableSVG_;
    }

    function getPayableSVG(address payableAddress_) external view returns (address) {
        address payableSVG = _payableSVGs[payableAddress_];
        if (payableSVG == address(0)) {
            payableSVG = _payableSVGs[address(0)];
        }
        return payableSVG;
    }

    function setBackgroundImage(address sft_, string calldata backgroundImage_) external virtual onlyOwner {
        emit SetBackgroundImage(sft_, _backgroundImages[sft_], backgroundImage_);
        _backgroundImages[sft_] = backgroundImage_;
    }

    function getBackgroundImage(address sft_) external view virtual returns (string memory) {
        return _backgroundImages[sft_];
    }
    
    function setBaseURI(string calldata baseURI_) external virtual onlyOwner {
        _setBaseURI(baseURI_);
    }

    function _setBaseURI(string calldata baseURI_) internal {
        emit SetBaseURI(baseURI, baseURI_);
        baseURI = baseURI_;
    }

    function _contractDescription() internal view virtual override returns (string memory) {
        return "Time-Locked ERC-20 Container serves as a secure storage unit that locks ERC-20 tokens within a protected enclosure, enabling a customized release schedule. Within this container, you can establish precise lock-up durations, release methods, and dates, ensuring a rigorously controlled and adaptable token release process.";
    }

    function _slotName(uint256 slot_) internal view virtual override returns (string memory) {
        TimelockedERC20ContainerDelegate delegate = TimelockedERC20ContainerDelegate(_msgSender());
        TimelockedERC20ContainerConcrete concrete = TimelockedERC20ContainerConcrete(delegate.concrete());
        TimelockedERC20ContainerConcrete.TimelockSlotInfo memory slotInfo = concrete.slotInfo(slot_);
        uint256 startTime = slotInfo.issuer == address(0) ? slotInfo.startTime : slotInfo.latestStartTime;
        return string(
            abi.encodePacked(
                ERC20(slotInfo.erc20).symbol(), ' - ',
                _parseTimelockType(slotInfo.timelockType), ' - ',
                slotInfo.issuer == address(0) ? 'Fixed - ' : 'Flexible - ',
                uint256(startTime).dateToString()
            )
        );
    }

    function _slotDescription(uint256 slot_) internal view virtual override returns (string memory) {
        TimelockedERC20ContainerDelegate delegate = TimelockedERC20ContainerDelegate(_msgSender());
        TimelockedERC20ContainerConcrete concrete = TimelockedERC20ContainerConcrete(delegate.concrete());
        TimelockedERC20ContainerConcrete.TimelockSlotInfo memory slotInfo = concrete.slotInfo(slot_);
        return string(
            abi.encodePacked(
                'This is a slot that encapsulates ', ERC20(slotInfo.erc20).symbol(), 
                '(', slotInfo.erc20.toHexString(), '), with a ', _parseTimelockType(slotInfo.timelockType),
                ' unlock time-lock type. The start unlocking time is ',
                slotInfo.issuer == address(0) ? 'fixed on ' : 'flexible but no later than ',
                uint256(slotInfo.latestStartTime).dateToString(), '.'
            )
        );
    }

    function _tokenName(uint256 tokenId_) internal view virtual override returns (string memory) {
        TimelockedERC20ContainerDelegate delegate = TimelockedERC20ContainerDelegate(_msgSender());
        uint256 slot = delegate.slotOf(tokenId_);
        return string(abi.encodePacked(_slotName(slot), " #", tokenId_.toString()));
    }

    function _tokenImage(uint256 tokenId_) internal view virtual override returns (bytes memory) {
        uint256 chainId;
        assembly { chainId := chainid() }

        return 
            abi.encodePacked(
                baseURI, 
                '/image/chain/', chainId.toString(), 
                '/contract/', _msgSender().toHexString(),
                '/token/', tokenId_.toString()
            );
    }

    function _tokenRawImage(uint256 tokenId_) internal view virtual returns (bytes memory) {
        address timelockedERC20ContainerSVG = _payableSVGs[_msgSender()];
        if (timelockedERC20ContainerSVG == address(0)) {
            timelockedERC20ContainerSVG = _payableSVGs[address(0)];
        }

        return 
            abi.encodePacked(
                'data:image/svg+xml;base64,',
                Base64.encode(bytes(TimelockedERC20ContainerDefaultSVG(timelockedERC20ContainerSVG).generateSVG(_msgSender(), tokenId_)))
            );
    }

    function _slotProperties(uint256 slot_) internal view virtual override returns (string memory) {
        TimelockedERC20ContainerDelegate delegate = TimelockedERC20ContainerDelegate(msg.sender);
        TimelockedERC20ContainerConcrete concrete = TimelockedERC20ContainerConcrete(delegate.concrete());

        TimelockedERC20ContainerConcrete.TimelockSlotInfo memory slotInfo = concrete.slotInfo(slot_);

        uint256 chainId;
        assembly { chainId := chainid() }

        return 
            string(
                /* solhint-disable */
                abi.encodePacked(
                    '[',
                        abi.encodePacked(
                            '{"name":"chain_id",',
                            '"description":"chain id",',
                            '"value":"', chainId.toString(), '",',
                            '"is_intrinsic":true,',
                            '"order":1,', 
                            '"display_type":"number"},'
                        ),
                        abi.encodePacked(
                            '{"name":"time_locked_container_address",',
                            '"description":"Address of this contract.",',
                            '"value":"', address(delegate).toHexString(), '",',
                            '"is_intrinsic":true,',
                            '"order":2,', 
                            '"display_type":"string"},'
                        ),
                        abi.encodePacked(
                            '{"name":"erc20",',
                            '"description":"Address of the underlying erc20 token.",',
                            '"value":"', slotInfo.erc20.toHexString(), '",',
                            '"is_intrinsic":true,',
                            '"order":3,', 
                            '"display_type":"string"},'
                        ),
                        abi.encodePacked(
                            '{"name":"timelocked_type",',
                            '"description":"Time-locked type of this slot.",',
                            '"value":"', uint256(slotInfo.timelockType).toString(), '",',
                            '"is_intrinsic":true,',
                            '"order":4,', 
                            '"display_type":"number"},'
                        ),
                        abi.encodePacked(
                            '{"name":"start_time",',
                            '"description":"Start unlocking time of this slot.",',
                            '"value":"', uint256(slotInfo.startTime > 0 ? slotInfo.startTime : slotInfo.latestStartTime).toString(), '",',
                            '"is_intrinsic":true,',
                            '"order":5,', 
                            '"display_type":"date"},'
                        ),
                        abi.encodePacked(
                            '{"name":"issuer",',
                            '"description":"Issuer (for flexible) of this slot.",',
                            '"value":"', slotInfo.issuer.toHexString(), '",',
                            '"is_intrinsic":true,',
                            '"order":6,', 
                            '"display_type":"string"},'
                        ),
                        abi.encodePacked(
                            '{"name":"terms",',
                            '"description":"Time-locked terms of this slot.",',
                            '"value":', _uintArray2str(slotInfo.terms), ',',
                            '"is_intrinsic":true,',
                            '"order":7,', 
                            '"display_type":"array"},'
                        ),
                        abi.encodePacked(
                            '{"name":"percentages",',
                            '"description":"Unlock ratio of each term.",',
                            '"value":', _percentArray2str(slotInfo.percentages), ',',
                            '"is_intrinsic":true,',
                            '"order":8,', 
                            '"display_type":"array"},'
                        ),

                        abi.encodePacked(
                            slotInfo.issuer == address(0) ? abi.encodePacked() : 
                            abi.encodePacked(
                                '{"name":"latest_start_time",',
                                '"description":"Latest start time of this slot.",',
                                '"value":"', uint256(slotInfo.latestStartTime).toString(), '",',
                                '"is_intrinsic":false,',
                                '"display_type":"date"},'
                            ),
                            abi.encodePacked(
                                '{"name":"total_value",',
                                '"description":"Total value locked in this slot.",',
                                '"value":"', slotInfo.totalValue.toString(), '",',
                                '"is_intrinsic":false,',
                                '"display_type":"number"}'
                            )
                        ),
                    ']'
                )
                /* solhint-enable */
            );
    }

    function _tokenProperties(uint256 tokenId_) internal view virtual override returns (string memory) {
        TimelockedERC20ContainerDelegate delegate = TimelockedERC20ContainerDelegate(_msgSender());
        TimelockedERC20ContainerConcrete concrete = TimelockedERC20ContainerConcrete(delegate.concrete());
        uint256 claimableValue = concrete.claimableValue(tokenId_);

        return
            string(
                abi.encodePacked(
                    '{',
                        '"claimable_value":"', claimableValue.toString(), '",',
                        '"raw_image":"', _tokenRawImage(tokenId_), '",',
                        '"background_image":"', _backgroundImages[_msgSender()], '"'
                    '}'
                )
            );
    }

    function _uintArray2str(uint64[] memory array) internal pure returns (string memory) {
        bytes memory pack = abi.encodePacked('[');
        for (uint256 i = 0; i < array.length; i++) {
            if (i == array.length - 1) {
                pack = abi.encodePacked(pack, uint256(array[i]).toString());
            } else {
                pack = abi.encodePacked(pack, uint256(array[i]).toString(), ',');
            }
        }
        return string(abi.encodePacked(pack, ']'));
    }

    function _percentArray2str(uint32[] memory array) internal pure returns (string memory) {
        bytes memory pack = abi.encodePacked('[');
        for (uint256 i = 0; i < array.length; i++) {
            bytes memory percent = abi.encodePacked('"', uint256(array[i]).toDecimalsString(2), '%"');

            if (i == array.length - 1) {
                pack = abi.encodePacked(pack, percent);
            } else {
                pack = abi.encodePacked(pack, percent, ',');
            }
        }
        return string(abi.encodePacked(pack, ']'));
    }

    function _parseTimelockType(ITimelockedERC20Concrete.TimelockType timelockType) private pure returns (string memory) {
        return 
            timelockType == ITimelockedERC20Concrete.TimelockType.LINEAR ? "Linear" : 
            timelockType == ITimelockedERC20Concrete.TimelockType.ONE_TIME ? "OneTime" :
            timelockType == ITimelockedERC20Concrete.TimelockType.STAGED ? "Staged" : 
            "Unknown";
    }

}