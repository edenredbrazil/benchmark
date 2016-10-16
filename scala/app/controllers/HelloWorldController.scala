package controllers

import javax.inject._
import play.api._
import play.api.mvc._
import play.api.libs.json._

@Singleton
class HelloWorldController extends Controller {

	def index = Action {
		Ok(Json.toJson(Map("hello" -> "world")))
	}
}