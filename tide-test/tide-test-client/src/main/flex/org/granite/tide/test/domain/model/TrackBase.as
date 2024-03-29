/**
 * Generated by Gas3 v2.0.0 (Granite Data Services).
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERWRITTEN EACH TIME YOU USE
 * THE GENERATOR. INSTEAD, EDIT THE INHERITED CLASS (Track.as).
 */

package org.granite.tide.test.domain.model {

    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    import flash.utils.IExternalizable;
    import mx.collections.ListCollectionView;

    [Bindable]
    public class TrackBase implements IExternalizable {

        private var _duration:Duration;
        private var _id:Number;
        private var _orderNum:int;
        private var _title:String;
        private var _trackArtists:ListCollectionView;

        public function set duration(value:Duration):void {
            _duration = value;
        }
        public function get duration():Duration {
            return _duration;
        }

        public function set id(value:Number):void {
            _id = value;
        }
        public function get id():Number {
            return _id;
        }

        public function set orderNum(value:int):void {
            _orderNum = value;
        }
        public function get orderNum():int {
            return _orderNum;
        }

        public function set title(value:String):void {
            _title = value;
        }
        public function get title():String {
            return _title;
        }

        public function set trackArtists(value:ListCollectionView):void {
            _trackArtists = value;
        }
        public function get trackArtists():ListCollectionView {
            return _trackArtists;
        }

        public function readExternal(input:IDataInput):void {
            _duration = input.readObject() as Duration;
            _id = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
            _orderNum = input.readObject() as int;
            _title = input.readObject() as String;
            _trackArtists = input.readObject() as ListCollectionView;
        }

        public function writeExternal(output:IDataOutput):void {
            output.writeObject(_duration);
            output.writeObject(_id);
            output.writeObject(_orderNum);
            output.writeObject(_title);
            output.writeObject(_trackArtists);
        }
    }
}